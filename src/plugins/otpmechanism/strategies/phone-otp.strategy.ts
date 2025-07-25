import { Injectable } from '@nestjs/common';
import { AuthenticationStrategy, CustomerService, ExternalAuthenticationService, Injector, RequestContext, User } from '@vendure/core';
import { DocumentNode } from 'graphql';
import gql from 'graphql-tag';
import { STRATEGY_PHONE_OTP } from '../constants';
import { PhoneOtpService } from '../services/phone-otp.service';
 
export type PhoneAuthData = {
  phoneNumber: string;
  code: string;
  firstName: string;
  lastName: string;
};
 
@Injectable()
export class PhoneOtpAuthenticationStrategy implements AuthenticationStrategy {
  readonly name = STRATEGY_PHONE_OTP;
  private externalAuthenticationService: ExternalAuthenticationService;
  private service: PhoneOtpService;
  private customerService: CustomerService;
 
  constructor() { }
 
  init(injector: Injector) {
    this.externalAuthenticationService = injector.get(ExternalAuthenticationService);
    this.service = injector.get(PhoneOtpService);
    this.customerService = injector.get(CustomerService);
  }
 
  defineInputType(): DocumentNode {
    return gql`
      input PhoneOtpInput {
        phoneNumber: String!
        code: String!
         firstName: String
      lastName: String
      }
    `;
  }
 
  async authenticate(ctx: RequestContext, data: PhoneAuthData): Promise<User | false | string> {
    const verified = await this.service.verifyOtp(ctx, data.phoneNumber, data.code);
    if (!verified) {
      return "Invalid OTP";
    }
 
    const user = await this.externalAuthenticationService.findCustomerUser(ctx, this.name, data.phoneNumber);

    if (user) {
      return user;
      
    }
 
    try {
      // We need to create a new user and customer
      const newCustomer = await this.externalAuthenticationService.createCustomerAndUser(ctx, {
        strategy: this.name,
        externalIdentifier: data.phoneNumber,
        verified: true,  
        firstName: data.firstName ,
        lastName: data.lastName ,
      
        emailAddress: `${data.phoneNumber}@kaikani.com`,
      });

      const customer = await this.customerService.findOneByUserId(
        ctx,
        newCustomer.id
      );
      if (!customer) return Promise.reject("Customer not found");
 
      await this.customerService.update(ctx, {
        id: customer.id,
        phoneNumber: data.phoneNumber,
        firstName: data.firstName,

      });
      return newCustomer;
    } catch (error) {
      return Promise.reject(error);
    }
  }
 
  // onLogOut?(ctx: RequestContext, user: User): Promise<void> {
  //   throw new Error('Method not implemented.');
  // }
  // destroy?: (() => void | Promise<void>) | undefined;
}

 
 
