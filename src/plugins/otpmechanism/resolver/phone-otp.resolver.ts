// phone-otp.resolver.ts
import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { Allow, Ctx, RequestContext } from '@vendure/core';
import { PhoneOtpService } from '../services/phone-otp.service';

@Resolver()
export class PhoneOtpResolver {
  constructor(private phoneOtpService: PhoneOtpService) {}

  @Mutation()
  sendPhoneOtp(@Ctx() ctx: RequestContext, @Args() args: { phoneNumber: string }): Promise<string | null> {
    return this.phoneOtpService.sendOtp(ctx, args.phoneNumber);
  }

  @Mutation()
  resendPhoneOtp(@Ctx() ctx: RequestContext, @Args() args: { phoneNumber: string }): Promise<string | null> {
    return this.phoneOtpService.resendOtp(ctx, args.phoneNumber);
  }
  // @Mutation()
  // async verifyPhoneOtp(
  //   @Ctx() ctx: RequestContext,
  //   @Args() args: { phoneNumber: string; code: string }
  // ): Promise<boolean> {
  //   return this.phoneOtpService.verifyOtp(ctx, args.phoneNumber, args.code);
  // }
}
