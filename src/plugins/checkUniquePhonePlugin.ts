import {Allow, Ctx, CustomerService, PluginCommonModule, RequestContext, VendurePlugin} from "@vendure/core";
import {Resolver, Args,Query} from '@nestjs/graphql';
import gql from 'graphql-tag';


const schemaExtension = gql`
extend type Query {
checkUniquePhone(phone: String!):Boolean!
}
`;

@Resolver()
class CheckUniquePhoneResolver {

  constructor(private customerService: CustomerService) {}

  @Query()
  async checkUniquePhone(@Ctx() ctx: RequestContext, @Args() args: any): Promise<Boolean> {
    let customers = await this.customerService.findAll(ctx, {
        take: 2,
        filter: { phoneNumber: { eq: `${args.phone}` } },
      });

    // make sure only one customer was selected
    if (!customers["totalItems"] || customers["totalItems"] > 1) {
      return true;
    }

    if (!customers["items"][0] || !customers["items"][0].user) {
      return true;
    }

    return false;
  }

}

@VendurePlugin({
    imports: [PluginCommonModule],
    compatibility: '^3.0.4',
    shopApiExtensions: {
      schema: schemaExtension,
      resolvers: [CheckUniquePhoneResolver],
    },
    
  })

export class CheckUniquePhonePlugin{}