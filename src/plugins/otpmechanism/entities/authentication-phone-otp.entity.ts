import {
    DeepPartial,
    VendureEntity
  } from '@vendure/core';
  import { Column, Entity, Index } from 'typeorm';
   
   
  @Entity()
  export class AuthenticationPhoneOtp extends VendureEntity {
   
    constructor(input?: DeepPartial<AuthenticationPhoneOtp>) {
      super(input);
    }
   
    @Column({ length: 25 })
    @Index()
    phoneNumber: string;
   
    @Column({ length: 25 })
    code: string;
   
  }