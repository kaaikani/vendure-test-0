import { LanguageCode, PromotionCondition } from "@vendure/core";

export const shouldApplyCouponcode = new PromotionCondition({
    code: "shouldApplyCouponcode",
    args: {},
    description: [
        {languageCode: LanguageCode.en, value: 'Coupon code should be applicable'}
    ],
    check: (ctx,order, args,promotion) => {
        return (promotion.customFields as any).shouldApply;
    },
})