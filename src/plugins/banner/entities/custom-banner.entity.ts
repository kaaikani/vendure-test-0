import { Asset, Channel, DeepPartial, HasCustomFields, VendureEntity } from '@vendure/core';
import { Column, Entity, ManyToMany, JoinTable } from 'typeorm';



@Entity()
export class CustomBanner extends VendureEntity  {
    constructor(input?: DeepPartial<CustomBanner>) {
        super(input);
    }

   

    @ManyToMany(() => Asset, { eager: true })
    @JoinTable()
    assets: Asset[];
    
    @ManyToMany(() => Channel)
    @JoinTable()
    channels: Channel[];
}
