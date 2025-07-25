import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { DeletionResponse, Permission } from '@vendure/common/lib/generated-types';
import { CustomFieldsObject } from '@vendure/common/lib/shared-types';
import {
    Allow,
    Ctx,
    ID,
    ListQueryOptions,
    PaginatedList,
    RelationPaths,
    Relations,
    RequestContext,
    Transaction
} from '@vendure/core';
import { CustomBanner } from '../entities/custom-banner.entity';
import { CustomBannerService } from '../services/custom-banner.service';

interface CreateCustomBannerInput {
    code: string;
   
    customFields?: CustomFieldsObject;
}
interface UpdateCustomBannerInput {
    id: ID;
    code?: string;
    
    customFields?: CustomFieldsObject;
}

@Resolver()
export class CustomBannerAdminResolver {
    constructor(private customBannerService: CustomBannerService) {}

    @Query()
    @Allow(Permission.SuperAdmin)
    async customBanner(
        @Ctx() ctx: RequestContext,
        @Args() args: { id: ID },
        @Relations(CustomBanner) relations: RelationPaths<CustomBanner>,
    ): Promise<CustomBanner | null> {
        return this.customBannerService.findOne(ctx, args.id, relations);
    }

    @Query()
    @Allow(Permission.SuperAdmin)
    async customBanners(
        @Ctx() ctx: RequestContext,
        @Args() args: { options: ListQueryOptions<CustomBanner> },
        @Relations(CustomBanner) relations: RelationPaths<CustomBanner>,
    ): Promise<PaginatedList<CustomBanner>> {
        return this.customBannerService.findAll(ctx, args.options || undefined, relations);
    }

    @Mutation()
    @Transaction()
    @Allow(Permission.SuperAdmin)
    async createCustomBanner(
        @Ctx() ctx: RequestContext,
        @Args('input') input: CreateCustomBannerInput
    ): Promise<CustomBanner> {
        return this.customBannerService.create(ctx, input); // Use customBannerService here
    }

    @Mutation()
    @Transaction()
    @Allow(Permission.SuperAdmin)
    async updateCustomBanner(
        @Ctx() ctx: RequestContext,
        @Args() args: { input: UpdateCustomBannerInput },
    ): Promise<CustomBanner> {
        return this.customBannerService.update(ctx, args.input);
    }
    
    @Mutation()
    @Transaction()
    @Allow(Permission.SuperAdmin)
    async deleteCustomBanner(@Ctx() ctx: RequestContext, @Args() args: { id: ID }): Promise<DeletionResponse> {
        return this.customBannerService.delete(ctx, args.id);
    }
}



