import { Args, Query, Resolver } from '@nestjs/graphql';
import { Allow, Ctx, RequestContext } from '@vendure/core';
import { CustomBannerService } from '../services/custom-banner.service';
import { CustomBanner } from '../entities/custom-banner.entity';


@Resolver()
export class CustomBannerShopResolver {
    constructor(private customBannerService: CustomBannerService) {}

    @Query()
    async customBanners(
        @Ctx() ctx: RequestContext
    ): Promise<CustomBanner[]> {
        return this.customBannerService.findByChannel(ctx, String(ctx.channelId));
    }
}