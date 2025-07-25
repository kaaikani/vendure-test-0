import {
  PluginCommonModule,
  VendurePlugin,
  RequestContext,
  ID,
  Ctx,
  TransactionalConnection,
  Customer,
  ExternalAuthenticationMethod,
} from '@vendure/core';
import {
  Args,
  Query,
  Resolver,
} from '@nestjs/graphql';
import { gql } from 'graphql-tag';
import { ChannelService } from '@vendure/core/dist/service/services/channel.service';
import { CustomerService } from '@vendure/core/dist/service/services/customer.service';
import { UserService } from '@vendure/core/dist/service/services/user.service';
import { Channel } from '@vendure/core';
import { IsNull } from 'typeorm';
@Resolver()
export class CustomerChannelResolver {
  constructor(
    private channelService: ChannelService,
    private customerService: CustomerService,
    private userService: UserService, // ✅ Inject here
    private connection: TransactionalConnection // ← Add this
  ) { }

  @Query(() => [Channel])
  async getChannelsByCustomerEmail(
    @Ctx() ctx: RequestContext,
    @Args('email') email: string
  ): Promise<Channel[]> {
    const user = await this.userService.getUserByEmailAddress(ctx, email, 'customer');
    if (!user) {
      throw new Error('User not found with this email');
    }

    const customer = await this.customerService.findOneByUserId(ctx, user.id, false);
    if (!customer) {
      throw new Error('Customer not found for this user');
    }

    const customerWithChannels = await this.customerService.findOne(ctx, customer.id, ['channels']);
    if (!customerWithChannels?.channels) {
      return [];
    }

    const filteredChannels = customerWithChannels.channels.filter(
      channel => channel.code !== '__default_channel__'
    );

    return filteredChannels;
  }



  @Query(() => [Channel])
  async getChannelsByCustomerPhoneNumber(
    @Ctx() ctx: RequestContext,
    @Args('phoneNumber') phoneNumber: string,
  ): Promise<Channel[]> {
    const customer = await this.connection.getRepository(ctx, Customer).findOne({
  where: {
    phoneNumber,
    deletedAt: IsNull(), // Only non-deleted customers
  },
  relations: ['channels'],
});


  
    if (!customer) {
      throw new Error('Customer not found');
    }
  
    const channels = customer.channels?.filter(
      ch => ch.code !== '__default_channel__'
    ) ?? [];
  
    return channels;
  }
  


}


@VendurePlugin({
  imports: [PluginCommonModule],
  providers: [CustomerChannelResolver],
  compatibility: '^3.0.4',
  shopApiExtensions: {
    schema: gql`
      extend type Query {
  getChannelsByCustomerEmail(email: String!): [Channel!]!
              getChannelsByCustomerPhoneNumber(phoneNumber: String!): [Channel!]!
}
      `,
    resolvers: [CustomerChannelResolver],
  },
})
export class CustomerChannelPlugin { }