import { Query, Resolver } from "@nestjs/graphql";
import {
    ChannelService,
    Ctx,
    PluginCommonModule,
    RequestContext,
    VendurePlugin
} from "@vendure/core";
import gql from "graphql-tag";

const schemaExtension = gql`
extend type Query {
  getChannelList: [Channel!]!
}
`;

@Resolver()
class ChannelResolver {
  constructor(private channelService: ChannelService) {}

  @Query()
  async getChannelList(@Ctx() ctx: RequestContext) {
    const result = await this.channelService.findAll(ctx);
    return result.items.filter(channel => channel.token !== 'd7476xruz8xpzmkjsa6l');  }
}

@VendurePlugin({
  imports: [PluginCommonModule],
  compatibility: '^3.0.4',
  shopApiExtensions: {
    schema: schemaExtension,
    resolvers: [ChannelResolver],
  },
  providers: [ChannelService],
})
export class ChannelPlugin {}
