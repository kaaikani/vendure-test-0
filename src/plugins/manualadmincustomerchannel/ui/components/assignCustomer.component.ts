//assignCustomer.component.ts

import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { SharedModule } from '@vendure/admin-ui/core';
import { Apollo } from 'apollo-angular';
import gql from 'graphql-tag';

@Component({
    selector: 'channel-assignment',
    template: `
<vdr-page-block>
     <p style=" margin-bottom: 1rem;">Check twice that the<b> Entered Customer ID </b>and <b>Selected Channel is correct</b>. </p>
    
    <div *ngIf="message" [ngClass]="{'success': messageType === 'success', 'error': messageType === 'error'}" 
         class="notification">{{ message }}</div>

    <form [formGroup]="assignmentForm" (ngSubmit)="onSubmit()" 
          style="grid-template-columns: 1fr 1fr; gap: 2rem; max-width: 600px; margin: 2rem auto; padding: 2rem; border: 1px solid #ddd; border-radius: 8px; background-color: #dcdcdc;">
       
       <div style="display: flex; justify-content: space-evenly; gap: 1rem;">
            <div style="flex-grow: 1; min-width: 200px;">
                <label for="customerId" style="display: block; color: black; font-weight: bold; margin-bottom: 0.5rem;">Customer ID:</label>
                <input id="customerId" formControlName="customerId" placeholder="Enter the ID" required 
                       style="width: 80%; padding: 0.5rem; border: 1px solid #ddd; border-radius: 4px;" />
            </div>

            <div style="flex-grow: 1; min-width: 200px;">
                <label for="channelId" style="display: block; color: black; font-weight: bold; margin-bottom: 0.5rem;">Channel:</label>
                <select id="channelId" formControlName="channelId" required 
                        style="width: 100%; padding: 0.5rem; border: 1px solid #5A67D8; border-radius: 4px;">
                    <option value="" disabled selected>Select the Channel</option>
                    <option *ngFor="let channel of channels" [value]="channel.id">{{ channel.code }}</option>
                </select>
            </div>
        </div>

        <div style="grid-column: span 2; text-align: center; margin-top: 1rem;">
            <button type="submit" style="background-color: #5A67D8; color: white; padding: 0.75rem 2rem; border: none; border-radius: 4px; cursor: pointer; font-size: 1rem; font-weight: bold; transition: background-color 0.3s;">
                Update
            </button>
        </div>
    </form>
</vdr-page-block>
    `,
    styles: [`
        .notification {
            position: fixed;
            top: 20px;
            right: 20px;
            padding: 1rem;
            border-radius: 4px;
            color: white;
            font-weight: bold;
            z-index: 1000;
            transition: opacity 0.5s ease-in-out;
        }
        .success {
            background-color: #4CAF50;
        }
        .error {
            background-color: #f44336;
        }
    `],
    standalone: true,
    imports: [SharedModule],
})
export class AssignComponent implements OnInit {
    assignmentForm: FormGroup;
    channels: Array<{ id: string, code: string }> = [];
    message: string | null = null;
    messageType: 'success' | 'error' | null = null;

    constructor(
        private fb: FormBuilder,
        private apollo: Apollo
    ) {
        this.assignmentForm = this.fb.group({
            customerId: [''],
            channelId: [''],
        });
    }

    ngOnInit() {
        this.fetchChannels();
    }

    fetchChannels() {
        const GET_CHANNELS = gql`
            query GetChannels {
                channels {
                    items {
                        id
                        code
                    }
                }
            }
        `;

        this.apollo.watchQuery<{ channels: { items: Array<{ id: string; code: string }> } }>({ query: GET_CHANNELS })
            .valueChanges.subscribe(result => {
                this.channels = result.data.channels.items.filter(channel => channel.id !== '1');
            });
    }

    onSubmit() {
        const { customerId, channelId } = this.assignmentForm.value;

        const ASSIGN_CUSTOMER_TO_CHANNELS = gql`
            mutation AssignCustomerToChannels($customerId: ID!, $channelIds: [ID!]!) {
                assignCustomerToChannels(customerId: $customerId, channelIds: $channelIds)
            }
        `;

        this.apollo.mutate({
            mutation: ASSIGN_CUSTOMER_TO_CHANNELS,
            variables: {
                customerId,
                channelIds: [channelId],
            },
        }).subscribe(
            response => {
                this.showMessage('Customer has been successfully assigned to the channel.', 'success');
            },
            error => {
                this.showMessage('Failed to assign customer to the channel. Please try again.', 'error');
                console.error('Error assigning customer to channel:', error);
            }
        );
    }

    showMessage(message: string, type: 'success' | 'error') {
        this.message = message;
        this.messageType = type;
        setTimeout(() => {
            this.message = null;
            this.messageType = null;
        }, 5000); // Hide after 5 seconds
    }
}
