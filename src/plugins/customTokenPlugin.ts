import { StorageService } from '../storageService';
import { Resolver,Query, Mutation,Args } from '@nestjs/graphql';
import { gql } from 'graphql-tag';
import { PluginCommonModule, RequestContext,Ctx, OrderService, VendurePlugin, AdministratorService } from '@vendure/core';

const schemaExtension = gql`
  extend type Query {
    getPasswordResetToken: String!
  }
`;

@Resolver()
class CustomTokenResolver {
    constructor(){}
    @Query()
    getPasswordResetToken(@Ctx() ctx: RequestContext){
        return StorageService.passwordResetToken ?? 'no token';
    }
}

@VendurePlugin({
    imports: [PluginCommonModule],
    compatibility: '^3.0.4',
    shopApiExtensions:{
        schema: schemaExtension,
        resolvers: [CustomTokenResolver]
    }
})

export class CustomTokenPlugin{}