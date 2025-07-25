import { Query, Resolver,Mutation,Args } from "@nestjs/graphql";
import {
    Ctx,
    PluginCommonModule,
    PromotionService,
    RequestContext,
    VendurePlugin
} from "@vendure/core";
import gql from "graphql-tag";



const schemaExtension = gql`
type CoupcodesList implements PaginatedList {
  items: [Promotion!]!
  totalItems: Int!
}
extend type Query {
  getCouponCodeList: CoupcodesList!
}

extend type Mutation {
  togglePromotionState(promotionId: ID!,value: Boolean!): Promotion!
}
`;

@Resolver()
class CouponCodeResolver {
  constructor(private promotionService: PromotionService) {}
  @Query()
  async getCouponCodeList(@Ctx() ctx: RequestContext) {
    let res = await this.promotionService.findAll(ctx, {
      take: 10,
    });
    // console.log("res", res);
    return res;
  }
  @Mutation()
  async togglePromotionState(@Ctx() ctx: RequestContext, @Args() args: any) {
    const promotion = this.promotionService.updatePromotion(ctx,{
      id: args.promotionId,
      customFields: {
        shouldApply: args.value
      }
    });
    return promotion;
  }
}

@VendurePlugin({
  imports: [PluginCommonModule],
  compatibility: '^3.0.4',
  configuration: config => {
    config.customFields.Promotion.push({
      name: 'shouldApply',
      type: 'boolean',
      defaultValue: false,
    });
    return config;
  },
  shopApiExtensions: {
    schema: schemaExtension,
    resolvers: [CouponCodeResolver],
  },
  providers: [PromotionService],
})
export class PromotionPlugin {}