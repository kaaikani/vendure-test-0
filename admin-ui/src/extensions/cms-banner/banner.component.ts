import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule } from '@angular/forms';
import { SharedModule } from '@vendure/admin-ui/core';
import { Apollo } from 'apollo-angular';
import gql from 'graphql-tag';
import { CommonModule } from '@angular/common';
import { DataService } from '@vendure/admin-ui/core'; 
import { ChangeDetectorRef } from '@angular/core';



const GET_BANNERS = gql`
  query GetBanners {
    customBanners {
      items {
        id
        assets {
          id
          source
        }
        channels {
          id
        }
      }
    }
  }
`;

@Component({
  selector: 'banner-management',
  template: `
 <vdr-page-block>
  

  <!-- Upload Banner Section -->
    <vdr-card>
      <div class="upload-section">
        <vdr-form-field>
          <input type="file" (change)="onAssetSelected($event)" accept="image/*" />
        </vdr-form-field>
       <button vdr-button 
        type="submit" 
        color="primary" 
        [disabled]="!selectedAssetId" 
        (click)="onSubmit()"
        class="custom-upload-btn">
    Upload Banner
</button>

      </div>
    </vdr-card>

  <!-- Display Banners in a Grid -->
  <div class="banner-grid">
    <div *ngIf="banners.length === 0" class="empty-state">
      <p>No banners available. Create one to get started!</p>
    </div>

    <div *ngFor="let banner of banners" class="banner-card">
      <div class="banner-image">
        <img *ngIf="banner.assets.length > 0" [src]="banner.assets[0].source" class="image" />
      </div>

      <div class="banner-info">
        
        <div class="banner-actions">
          <button class="action-btn update-btn" (click)="triggerFileInput(fileInput)">Update Image</button>
          <button class="action-btn delete-btn" (click)="deleteBanner(banner.id)">Delete</button>
        </div>
      </div>

      <!-- Hidden input for file selection -->
      <input type="file" #fileInput (change)="onUpdateAsset($event, banner.id)" accept="image/*" style="display: none;" />
    </div>
  </div>
</vdr-page-block>

  `,
  styles: [`

  
  /* Upload Section - Responsive */
  .upload-section {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    gap: 12px;
    padding: 16px;
  }

/* Custom button styling */
.custom-upload-btn {
    padding: 12px 24px;
    background: linear-gradient(45deg, #4caf50, #45a049);
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: background 0.3s, transform 0.3s;
    text-transform: uppercase;
}

/* Hover effect */
.custom-upload-btn:hover {
    background: linear-gradient(45deg, #45a049, #4caf50);
    transform: scale(1.05);
}

/* Disabled state styling */
.custom-upload-btn[disabled] {
    background: #d3d3d3;
    cursor: not-allowed;
}


.banner-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 16px;
  padding: 16px;
}

.banner-card {
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  text-align: center;
  transition: transform 0.3s ease-in-out;
  padding: 16px;
}

.banner-card:hover {
  transform: translateY(-8px);
}

.banner-image {
  width: 100%;
  height: 200px;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #f4f4f4;
  border-radius: 6px;
  overflow: hidden;
}

.banner-image img {
  width: 100%;
  height: auto;
  object-fit: cover;
}

.banner-info {
  margin-top: 12px;
}

.banner-actions {
  display: flex;
  justify-content: space-between;
  gap: 8px;
}

.action-btn {
  padding: 8px 12px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  transition: 0.3s;
}

.update-btn {
  background-color: #007bff;
  color: white;
}

.update-btn:hover {
  background-color: #0056b3;
}

.delete-btn {
  background-color: #ff4d4d;
  color: white;
}

.delete-btn:hover {
  background-color: #cc0000;
}

.empty-state {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
  
  border-radius: 8px;
}

  `],
  standalone: true,
  imports: [SharedModule, CommonModule, ReactiveFormsModule],
})
export class BannerComponent implements OnInit {
  banners: Array<{ id: string, assets: { source: string }[], channels: { id: string }[] }> = [];
  selectedAssetId: string | null = null;
  currentChannelId: string | null = null;

  constructor(private apollo: Apollo, private dataService: DataService, private cdRef: ChangeDetectorRef) {}

  ngOnInit() {
    this.fetchActiveChannel();
  }

  fetchActiveChannel() {
    this.dataService
      .query<{ activeChannel: { id: string } }>(
        gql`
          query GetActiveChannel {
            activeChannel {
              id
            }
          }
        `
      )
      .single$.subscribe({
        next: (response) => {
          this.currentChannelId = response.activeChannel.id;
          console.log("Active Channel ID:", this.currentChannelId);
          this.fetchBanners();
        },
        error: (err) => console.error('Failed to fetch active channel', err),
      });
  }

  fetchBanners() {
    if (!this.currentChannelId) return;

    const GET_BANNERS = gql`
  query GetBanners {
    customBanners {
      items {
        id
        assets {
          id
          source
        }
        channels {
          id
        }
      }
    }
  }
`;


    this.apollo
      .watchQuery<{ customBanners: { items: any[] } }>({
        query: GET_BANNERS,
          fetchPolicy: 'network-only'
      })
      .valueChanges.subscribe({
        next: (result) => {
          console.log("Fetched Banners:", result.data.customBanners.items);
          this.banners = result.data.customBanners.items.filter(banner => 
            banner.channels.some(channel => channel.id === this.currentChannelId)
          );
          this.cdRef.detectChanges(); 
          console.log("Filtered Banners:", this.banners);
        },
        error: (err) => console.error('Failed to fetch banners', err),
      });
  }

  onAssetSelected(event: any) {
    const file: File = event.target.files[0];
    if (!file) return;
  
    const UPLOAD_ASSET = gql`
      mutation CreateAsset($input: [CreateAssetInput!]!) {
        createAssets(input: $input) {
          ... on Asset {
            id
            source
          }
          ... on MimeTypeError {
            message
            fileName
          }
        }
      }
    `;
  
    this.apollo
      .mutate<{ createAssets: Array<{ id?: string; source?: string; message?: string }> }>({
        mutation: UPLOAD_ASSET,
        variables: { input: [{ file }] },
        context: { useMultipart: true },
      })
      .subscribe({
        next: (response) => {
          console.log("Upload Response:", response);
          if (response.data && response.data.createAssets) {
            const uploadedAsset = response.data.createAssets.find(asset => asset.id);
            if (uploadedAsset?.id) {
              this.selectedAssetId = uploadedAsset.id;
              console.log("Selected Asset ID:", this.selectedAssetId);
            }
          }
        },
        error: (err) => console.error("Asset upload failed", err),
      });
  }
  

  onSubmit() {
    if (!this.selectedAssetId) return;
    this.createBanner(this.selectedAssetId);
    this.selectedAssetId = null;
  }

  createBanner(assetId: string) {
    if (!this.currentChannelId) return;

    const CREATE_BANNER = gql`
      mutation CreateCustomBanner($input: CreateCustomBannerInput!) {
        createCustomBanner(input: $input) { id assets { source } }
      }
    `;

  

    this.apollo.mutate({
      mutation: CREATE_BANNER,
      variables: { input: { assetIds: [assetId] } },
      refetchQueries: [{ query: GET_BANNERS }]
    }).subscribe({
      next: () => {
        console.log("Banner created successfully");
      },
      error: (err) => console.error("Create banner failed", err),
    });
    
    
  }

  triggerFileInput(fileInput: HTMLInputElement) {
    fileInput.click();
  }

  onUpdateAsset(event: any, bannerId: string) {
    const file: File = event.target.files[0];
    if (!file) return;
  
    const UPLOAD_ASSET = gql`
      mutation CreateAsset($input: [CreateAssetInput!]!) {
        createAssets(input: $input) {
          ... on Asset {
            id
            source
          }
          ... on MimeTypeError {
            message
            fileName
          }
        }
      }
    `;
  
    this.apollo
      .mutate<{ createAssets: Array<{ id?: string; source?: string; message?: string }> }>({
        mutation: UPLOAD_ASSET,
        variables: { input: [{ file }] },
        context: { useMultipart: true },
      })
      .subscribe({
        next: (response) => {
          console.log("Upload Response:", response);
          if (response.data && response.data.createAssets) {
            const uploadedAsset = response.data.createAssets.find(asset => asset.id);
            if (uploadedAsset?.id) {
              this.updateBanner(bannerId, uploadedAsset.id);  // Call update method
            }
          }
        },
        error: (err) => console.error("Asset upload failed", err),
      });
  }

  updateBanner(bannerId: string, assetId: string) {
    const UPDATE_BANNER = gql`
      mutation UpdateCustomBanner($input: UpdateCustomBannerInput!) {
        updateCustomBanner(input: $input) {
          id
          assets { source }
        }
      }
    `;
  
    this.apollo.mutate({
      mutation: UPDATE_BANNER,
      variables: { input: { id: bannerId, assetIds: [assetId] } }, // Include id inside input
    }).subscribe({
      next: () => {
        console.log("Banner updated successfully");
        this.fetchBanners();  // Refresh banners after update
        this.cdRef.detectChanges();
      },
      error: (err) => console.error("Update banner failed", err),
    });
  }
  
  
  

  deleteBanner(bannerId: string) {
    const DELETE_BANNER = gql`
      mutation DeleteCustomBanner($id: ID!) {
        deleteCustomBanner(id: $id) { result }
      }
    `;

    this.apollo.mutate({
      mutation: DELETE_BANNER,
      variables: { id: bannerId },
      refetchQueries: [{ query: GET_BANNERS }]
    }).subscribe({
      next: () => {
        this.fetchBanners();  // Refresh banners after deletion
        console.log("Banner deleted successfully");
      },
      error: (err) => console.error("Delete banner failed", err)
    });
  }
}
