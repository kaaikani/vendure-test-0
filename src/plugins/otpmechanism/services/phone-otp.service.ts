import { Injectable, OnApplicationBootstrap } from '@nestjs/common';
import { totp } from 'otplib';
import { TransactionalConnection, RequestContext, ExternalAuthenticationMethod } from '@vendure/core';
import { AuthenticationPhoneOtp } from '../entities/authentication-phone-otp.entity';
import { SmsService } from '../../../smsService'; // Import your SmsService
import { STRATEGY_PHONE_OTP } from '../constants';

@Injectable()
export class PhoneOtpService implements OnApplicationBootstrap {

  constructor(
    private connection: TransactionalConnection,
    private smsService: SmsService,
  ) {}

  onApplicationBootstrap() {}

  async sendOtp(ctx: RequestContext, phoneNumber: string): Promise<string | null> {
    totp.options = { digits: 4 };
    const token = totp.generate(`${process.env.TOTP_SALT}:${phoneNumber}`);
  
    console.log('Generated OTP:', token);  // Debugging OTP generation
  
    try {
      const repository = this.connection.getRepository(ctx, AuthenticationPhoneOtp);
  
      let phoneOtp = await repository.findOne({ where: { phoneNumber } });
  
      if (!phoneOtp) {
        phoneOtp = new AuthenticationPhoneOtp();
        phoneOtp.phoneNumber = phoneNumber;
      }
  
      phoneOtp.code = token;
  
      console.log('Saving OTP to DB:', phoneOtp);
      await repository.save(phoneOtp);
  
      const sms = new SmsService(
        "6837fbafd6fc05485c278e03", // Template ID
        phoneNumber,
        { var: token, Var:"cRQByF/CLA6"}
      );
  
      const smsResult = await sms.sendSms();
      console.log('SMS Sent:', smsResult);
  
      return token;
    } catch (error) {
      console.error('Error in sendOtp:', error);
      return null;
    }
  }
  
  async resendOtp(ctx: RequestContext, phoneNumber: string): Promise<string | null> {
    totp.options = { digits: 4 };
    const token = totp.generate(`${process.env.TOTP_SALT}:${phoneNumber}`);
  
    console.log('Generated Resend OTP:', token);
  
    try {
      const repository = this.connection.getRepository(ctx, AuthenticationPhoneOtp);
  
      let phoneOtp = await repository.findOne({ where: { phoneNumber } });
  
      if (!phoneOtp) {
        phoneOtp = new AuthenticationPhoneOtp();
        phoneOtp.phoneNumber = phoneNumber;
      }
  
      phoneOtp.code = token;
  
      console.log('Saving Resend OTP to DB:', phoneOtp);
      await repository.save(phoneOtp);
  
      const sms = new SmsService(
        "646b079bd6fc050f4533f312", // Different template ID for resend
        phoneNumber,
        { number: token }
      );
  
      const smsResult = await sms.sendSms();
      console.log('Resend SMS Sent:', smsResult);
  
      return token;
    } catch (error) {
      console.error('Error in resendOtp:', error);
      return null;
    }
  }
  
  
  

  async verifyOtp(ctx: RequestContext, phoneNumber: string, code: string) {
    try {
      const repository = this.connection.getRepository(ctx, AuthenticationPhoneOtp);

      // Fetch the record with the provided phoneNumber
      const phoneOtp = await repository.findOne({ where: { phoneNumber } });

      if (!phoneOtp) {
        // Phone number not found in the database
        console.log('Phone number not found.');
        return false;
      }

      // Check if the provided code matches the stored OTP code
      const isValid = phoneOtp.code === code;

      if (!isValid) {
        console.log('Invalid OTP code.');
        return false;
      }

      const userId = ctx.activeUserId;
      if (userId) {
        const authRepo = this.connection.getRepository(ctx, ExternalAuthenticationMethod);
        const newRecord = authRepo.create(
          new ExternalAuthenticationMethod({
            strategy: STRATEGY_PHONE_OTP,
            externalIdentifier: phoneNumber,
            user: { id: userId },
          })
        );
        await authRepo.save(newRecord);
      }

      return true;
    } catch (error) {
      console.error(`Error verifying OTP: ${error}`);
      return false;
    }
  }
}
