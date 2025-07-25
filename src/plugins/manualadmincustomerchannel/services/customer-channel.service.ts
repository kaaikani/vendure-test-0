import { Injectable } from '@nestjs/common';
import { Channel, ChannelService, Customer, RequestContext } from '@vendure/core';
import { Repository } from 'typeorm';

@Injectable()
export class CustomerChannelService {
    private customerRepository: Repository<Customer>;
    private defaultChannelId = '1';

    constructor(private channelService: ChannelService) {
        this.customerRepository = channelService['connection'].getRepository(Customer);
    }

    private async getCustomerAssignedChannels(ctx: RequestContext, customerId: string): Promise<string[]> {
        const customer = await this.customerRepository.findOne({
            where: { id: customerId },
            relations: ['channels'],
        });

        if (!customer) {
            throw new Error(`Customer with ID ${customerId} not found.`);
        }

        return customer.channels.map((channel: Channel) => String(channel.id));
    }

    async assignCustomerToChannels(ctx: RequestContext, customerId: string, channelIds: string[]): Promise<string> {
        if (!customerId || !channelIds || channelIds.length === 0) {
            throw new Error("Customer ID and channel IDs are required and should not be empty.");
        }

        const currentChannelIds = await this.getCustomerAssignedChannels(ctx, customerId);

        const channelsToRemove = currentChannelIds.filter(
            (id: string) => id !== this.defaultChannelId && !channelIds.includes(id)
        );

        if (channelsToRemove.length > 0) {
            await this.channelService.removeFromChannels(ctx, Customer, customerId, channelsToRemove);
        }

        await this.channelService.assignToChannels(ctx, Customer, customerId, channelIds);

        return `Customer with ID ${customerId} assigned to channels with IDs ${channelIds.join(', ')}`;
    }
}
