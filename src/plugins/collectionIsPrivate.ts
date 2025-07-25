import { Resolver,Query, Mutation,Args } from '@nestjs/graphql';
import { gql } from 'graphql-tag';
import { PluginCommonModule, RequestContext,Ctx, OrderService, CollectionService } from '@vendure/core';
import { VendurePlugin } from '@vendure/core';

const schemaExtension = gql`
extend type Query {
    checkCollectionIsPrivate(collectionId:ID!):Boolean!
}
`;

@Resolver()
class CollectionIsPrivateResolver {
    constructor(private collectionService: CollectionService){}
    @Query()
    checkCollectionIsPrivate(@Ctx() ctx: RequestContext,@Args() args: any){
        let isPrivate: boolean | undefined  = false;
        return this.collectionService.findOne(ctx,args.collectionId).then(data => {
            console.log('check isPrivate', data?.isPrivate);
            isPrivate = data?.isPrivate;
            
            return isPrivate;
        
        });
    }
}

@VendurePlugin({
    imports: [PluginCommonModule],
    compatibility: '^3.0.4',
    shopApiExtensions:{
        schema: schemaExtension,
        resolvers: [CollectionIsPrivateResolver]
    }
})

export class CollectionIsPrivatePlugin{}