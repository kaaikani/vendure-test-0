import { Inject, Injectable } from '@nestjs/common';
import { DeletionResponse, DeletionResult } from '@vendure/common/lib/generated-types';
import { CustomFieldsObject, ID, PaginatedList } from '@vendure/common/lib/shared-types';
import {
    Asset,
    AssetService,
    CustomFieldRelationService,
    ForbiddenError,
    InternalServerError,
    ListQueryBuilder,
    ListQueryOptions,
    RelationPaths,
    RequestContext,
    TransactionalConnection,
    UserInputError,
    assertFound
} from '@vendure/core';
import { BANNER_PLUGIN_OPTIONS } from '../constants';
import { CustomBanner } from '../entities/custom-banner.entity';
import { PluginInitOptions } from '../types';
import { In } from 'typeorm';

interface CreateCustomBannerInput {
    assetIds?: ID[];
    customFields?: CustomFieldsObject;
}

interface UpdateCustomBannerInput {
    id: ID;
    assetIds?: ID[];
    customFields?: CustomFieldsObject;
}

@Injectable()
export class CustomBannerService {
   
    constructor(
        private connection: TransactionalConnection,
        private assetService: AssetService,
        private listQueryBuilder: ListQueryBuilder,
        private customFieldRelationService: CustomFieldRelationService,
        @Inject(BANNER_PLUGIN_OPTIONS) private options: PluginInitOptions
    ) { }

   findByChannel(ctx: RequestContext, channelId: string): Promise<CustomBanner[]> {
    return this.connection.rawConnection.getRepository(CustomBanner).find({
        relations: ['channels'],
        where: {
            channels: { id: channelId }
        }
    });
}

    

    findAll(
        ctx: RequestContext,
        options?: ListQueryOptions<CustomBanner> & { channelId?: ID },
        relations?: RelationPaths<CustomBanner>,
    ): Promise<PaginatedList<CustomBanner>> {
        const whereCondition = options?.channelId
            ? { channels: { id: options.channelId } } // Query banners for a specific channel
            : { channels: { id: ctx.channelId } }; // Default to current channel
    
        return this.listQueryBuilder
            .build(CustomBanner, options, {
                relations: [...(relations || []), 'channels'],
                ctx,
                where: whereCondition,
            })
            .getManyAndCount()
            .then(([items, totalItems]) => ({ items, totalItems }));
    }
    

    findOne(
        ctx: RequestContext,
        id: ID,
        relations?: RelationPaths<CustomBanner>,
    ): Promise<CustomBanner | null> {
        return this.connection.getRepository(ctx, CustomBanner).findOne({
            where: { id },
            relations: [...(relations || []), 'channels'],
        });
    }

    async create(ctx: RequestContext, input: CreateCustomBannerInput): Promise<CustomBanner> {
        const newBanner = new CustomBanner();

        if (input.assetIds && input.assetIds.length > 0) {
            const assetList = await this.assetService.findAll(ctx, {
                filter: { id: { in: input.assetIds.map(String) } }
            });
            newBanner.assets = assetList.items;
        }

        newBanner.channels = [ctx.channel];

        const savedBanner = await this.connection.getRepository(ctx, CustomBanner).save(newBanner);

        return assertFound(this.findOne(ctx, savedBanner.id));
    }

    async update(ctx: RequestContext, input: UpdateCustomBannerInput): Promise<CustomBanner> {
        const banner = await this.connection.getEntityOrThrow(ctx, CustomBanner, input.id, { relations: ['channels'] });

        if (!banner) {
            throw new UserInputError(`CustomBanner with id ${input.id} not found`);
        }

        if (!banner.channels) {
            throw new InternalServerError(`Channels are not loaded for the CustomBanner with id ${input.id}`);
        }

        if (!banner.channels.some(channel => channel.id === ctx.channelId)) {
            throw new ForbiddenError();
        }

        if (input.assetIds && input.assetIds.length > 0) {
            const assetList = await this.assetService.findAll(ctx, {
                filter: { id: { in: input.assetIds.map(String) } }
            });
            banner.assets = assetList.items;
        }

        await this.connection.getRepository(ctx, CustomBanner).save(banner);

        return assertFound(this.findOne(ctx, banner.id));
    }

    async delete(ctx: RequestContext, id: ID): Promise<DeletionResponse> {
        const banner = await this.connection.getRepository(ctx, CustomBanner).findOne({
            where: { id },
            relations: ['channels'],
        });

        if (!banner) {
            throw new UserInputError(`CustomBanner with id ${id} not found`);
        }

        if (!banner.channels) {
            throw new InternalServerError(`Channels are not loaded for the CustomBanner with id ${id}`);
        }

        if (!banner.channels.some(channel => channel.id === ctx.channelId)) {
            throw new ForbiddenError();
        }

        try {
            await this.connection.getRepository(ctx, CustomBanner).remove(banner);
            return { result: DeletionResult.DELETED };
        } catch (e: any) {
            return { result: DeletionResult.NOT_DELETED, message: e.toString() };
        }
    }
}
