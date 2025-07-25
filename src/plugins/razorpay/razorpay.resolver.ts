import { Args, Mutation, Resolver } from "@nestjs/graphql";
import {
    Ctx,
    ID,
    InternalServerError,
    Logger,
    OrderService,
    PaymentMethod,
    RequestContext,
    TransactionalConnection,
} from "@vendure/core";
import { PaymentMethodArgsHash, RazorpayOrderResult } from "./types";
import { razorpayPaymentMethodHandler } from "./razorpay-payment-method";
import { loggerCtx } from "./constants";
import { getRazorpayInstance } from "./razorpay-common";

@Resolver()
export class RazorpayResolver {
    constructor(
        private connection: TransactionalConnection,
        private orderService: OrderService
    ) {}

   @Mutation()
async generateRazorpayOrderId(
    @Ctx() ctx: RequestContext,
    @Args() { orderId }: { orderId: ID }
) {
    const order = await this.orderService.findOne(ctx, orderId);

    if (order && order.customer) {
        if (order?.state !== 'ArrangingPayment') {
            return {
                __typename: "RazorpayOrderIdGenerationError",
                errorCode: "INVALID_ORDER_STATE_ERROR",
                message: 'The order must be in "ArrangingPayment" state in order to generate Razorpay OrderId for it',
            };
        }

        const args = await this.getPaymentMethodArgs(ctx);
        const razorpayClient = getRazorpayInstance(args);

        try {
            const razorPayOrder = await this.createRazorpayOrder(
                razorpayClient,
                {
                    amount: order.totalWithTax,
                    currency: "INR",
                }
            );

            await this.orderService.updateCustomFields(
                ctx,
                orderId,
                { razorpay_order_id: razorPayOrder.id }
            );

            return {
                __typename: "RazorpayOrderIdSuccess",
                razorpayOrderId: razorPayOrder.id,
                keyId: args.key_id,
                keySecret: args.key_secret,
            };
        } catch (e: any) {
            Logger.error(`[${loggerCtx}] Razorpay order creation failed`, JSON.stringify(e, null, 2));
            throw new InternalServerError("Could not create Razorpay order. See logs for details.");
        }
    }

    return {
        __typename: "RazorpayOrderIdGenerationError",
        errorCode: "VENDURE_ORDER_ID_NOT_FOUND_ERROR",
        message: "The order id you have provided is invalid",
    };
}


private async getPaymentMethodArgs(
    ctx: RequestContext
): Promise<PaymentMethodArgsHash> {
    const method = await this.connection
        .getRepository(ctx, PaymentMethod)
        .createQueryBuilder('method')
        .leftJoin('method.channels', 'channel')
        .where('method.code = :code', { code: razorpayPaymentMethodHandler.code })
        .andWhere('channel.id = :channelId', { channelId: ctx.channelId })
        .getOne();

    if (!method) {
        throw new InternalServerError(
            `[${loggerCtx}] Could not find Razorpay PaymentMethod for channel ${ctx.channel.token}`
        );
    }

    const args = method.handler.args.reduce((hash, arg) => {
        return {
            ...hash,
            [arg.name]: arg.value,
        };
    }, {} as PaymentMethodArgsHash);

    // Optional: Log credentials to verify
Logger.info(`[${loggerCtx}] Razorpay creds: key_id=${args.key_id}, key_secret=${args.key_secret}`);
    return args;
}





   private async createRazorpayOrder(
    razorpayClient: any,
    orderArgs?: any
): Promise<RazorpayOrderResult> {
    if (!orderArgs.amount) {
        throw new InternalServerError("Required Argument Missing: Amount");
    }
    return new Promise((resolve, reject) => {
        razorpayClient.orders.create(
            orderArgs,
            (err: any, order: RazorpayOrderResult) => {
                if (err) {
                    Logger.error(`[${loggerCtx}] Razorpay error response: ${JSON.stringify(err)}`);
                    return reject(new InternalServerError("Could not create Razorpay order. See logs for details."));
                }
                Logger.info(`[${loggerCtx}] Razorpay order created: ${order.id}`);
                resolve(order);
            }
        );
    });
}

}