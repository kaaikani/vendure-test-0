import { PaymentMethodHandler } from "@vendure/core";
import { LanguageCode } from "@vendure/common/lib/generated-types";
import {
    doesPaymentAmountMatch,
    getPaymentAmountOnOrder,
    getRazorpayInstance,
    isChecksumVerified,
} from "./razorpay-common";
import {RazorpayRefundResult} from "./types";

export const razorpayPaymentMethodHandler = new PaymentMethodHandler({
    code: "online",
    description: [{ languageCode: LanguageCode.en, value: "Razorpay..." }],
    args: {
        key_id: { type: "string" },
        key_secret: { type: "string" },
    },
    async createPayment(ctx, order, amount, args, metadata) {
        try {
            // Getting razorpayOrderid stored for current vendure order.
            const razorpayOrderId = (order?.customFields as any)
                .razorpay_order_id;
            // metadata = JSON.parse(metadata as any);
            console.log('🚀 createPayment called with metadata:', metadata);
console.log('🔒 razorpay_order_id on order:', razorpayOrderId);

            // const { razorpay_payment_id: razorpayPaymentId, razorpay_signature: razorpaySignature } = metadata;
            const {
  razorpay_payment_id: razorpayPaymentId,
  razorpay_signature: razorpaySignature,
  razorpay_order_id: razorpayOrderIdFromClient,
} = metadata.payment_details ?? {};


            if (
                !isChecksumVerified({
                    razorpayOrderId,
                    razorpaySignature,
                    razorpayPaymentId,
                    secretKey: args.key_secret,
                })
            ) {
                return {
                    amount: amount,
                    state: "Declined" as const,
                    transactionId: razorpayPaymentId,
                    errorMessage: "SIGNATURE MISMATCH",
                    metadata
                };
            }

            const client = await getRazorpayInstance(args);
            // Get payment amount of transaction done against current order.
            const razorpayPaymentAmount = await getPaymentAmountOnOrder(
                razorpayOrderId,
                client
            );
            if (!razorpayPaymentAmount) {
                return {
                    amount: amount,
                    state: "Declined" as const,
                    transactionId: razorpayPaymentId,
                    errorMessage: "NO PAYMENT FOUND FOR GIVEN ORDER ID",
                    metadata
                };
            }

            // Check if user has paid required or lesser amount than the order amount.
            if (
                doesPaymentAmountMatch(razorpayPaymentAmount as number, +amount)
            ) {
                // All checks have passed. This is a legit payment. Save payment result
                // which updates orderState to "paymentSettled"
                return {
                    amount: amount,
                    state: "Settled" as const,
                    transactionId: razorpayPaymentId,
                    metadata
                };
            } else {
                return {
                    amount: amount,
                    state: "Declined" as const,
                    transactionId: razorpayPaymentId,
                    errorMessage: "AMOUNT MISMATCH",
                    metadata
                };
            }
        } catch (e: unknown) {
    let errorMessage = 'Unknown error';
    if (e instanceof Error) {
        errorMessage = e.message;
    } else if (typeof e === 'string') {
        errorMessage = e;
    }

    return {
        amount: order.total,
        state: "Error" as const,
        transactionId: "",
        errorMessage,
        metadata,
    };
}
    },
    // We desire to instantly settle payment.
    settlePayment() {
        return {
            success: true,
        };
    },
    async createRefund(ctx, input, total, order, payment, args) {
        const client: any = await getRazorpayInstance(args);
        const refundResult: RazorpayRefundResult = await client.payments.refund(
            payment.transactionId,
            {
                amount: +total,
            }
        );

        if (
            refundResult.id &&
            (refundResult.status === "processed" ||
                refundResult.status === "pending")
        ) {
            return {
                state: "Settled" as const,
                transactionId: refundResult.id,
                metadata: refundResult,
            };
        }
        return {
            state: "Failed" as const,
            transactionId: refundResult.id || "",
            metadata: refundResult || {},
        };
    },
});