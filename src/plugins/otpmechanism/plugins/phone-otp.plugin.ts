// src/gaia/plugins/phone-otp.plugin.ts
import { PluginCommonModule, VendurePlugin } from '@vendure/core';
import { PhoneOtpAuthenticationStrategy } from '../strategies/phone-otp.strategy';
import { PhoneOtpService } from '../services/phone-otp.service';
import { Module } from '@nestjs/common';
import { SmsService } from '../../../smsService';
import { PhoneOtpResolver } from '../resolver/phone-otp.resolver';
import gql from 'graphql-tag';
import { AuthenticationPhoneOtp } from '../entities/authentication-phone-otp.entity';

// Define schema extension for the mutation
const schemaExtension = gql`
  extend type Mutation {
    sendPhoneOtp(phoneNumber: String!): String
    resendPhoneOtp(phoneNumber: String!): String
  }
`;

@VendurePlugin({
  imports: [PluginCommonModule],
  compatibility: '^3.0.4',
  shopApiExtensions: {
    schema: schemaExtension,  // Extend the Mutation type with sendPhoneOtp
    resolvers: [PhoneOtpResolver],  // Include PhoneOtpResolver to handle the mutation
  },
  providers: [PhoneOtpService, PhoneOtpResolver, SmsService],
  entities: [AuthenticationPhoneOtp], // Add this line to include the entity
})
export class PhoneOtpPlugin {}
