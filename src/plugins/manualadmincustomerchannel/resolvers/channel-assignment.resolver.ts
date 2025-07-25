import { Resolver, Mutation, Args, ID } from '@nestjs/graphql';
import { Ctx, RequestContext } from '@vendure/core';
import { CustomerChannelService } from '../services/customer-channel.service';

@Resolver()
export class ChannelAssignmentResolver {
    constructor(private customerChannelService: CustomerChannelService) {}

    @Mutation(() => String)
    async assignCustomerToChannels(
        @Ctx() ctx: RequestContext,
        @Args('customerId', { type: () => ID }) customerId: string,
        @Args('channelIds', { type: () => [ID] }) channelIds: string[],
    ): Promise<string> {
        return this.customerChannelService.assignCustomerToChannels(ctx, customerId, channelIds);
    }
}
