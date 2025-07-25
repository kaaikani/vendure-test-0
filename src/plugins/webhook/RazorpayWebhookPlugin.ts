import { INestApplication } from '@nestjs/common';
import { Args, Query, Resolver } from '@nestjs/graphql';
import {
    LanguageCode,
    Logger,
    Order,
    OrderService,
    PluginCommonModule,
    RequestContext,
    RequestContextService,
    TransactionalConnection,
    VendurePlugin,
    ChannelService,
    Channel,
} from '@vendure/core';
import * as crypto from 'crypto';
import express, { Request, Response } from 'express';
import { gql } from 'graphql-tag';
import {
    Column,
    CreateDateColumn,
    Entity,
    PrimaryGeneratedColumn,
} from 'typeorm';

const loggerCtx = 'RazorpayWebhookPlugin';

declare module '@vendure/core' {
  interface CustomOrderFields {
    razorpay_order_id?: String;
    razorpayStatus?: String;
  }
}

@Entity()
export class RazorpayWebhookEvent {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    event: string;

    @Column()
    razorpayOrderId: string;

    @Column({ type: 'json' })
    payload: any;

    @CreateDateColumn()
    createdAt: Date;
}

const schema = gql`
  extend type Query {
    razorpayWebhookEvents(orderId: String!): [RazorpayWebhookEvent!]!
  }

  type RazorpayWebhookEvent {
    id: ID!
    event: String!
    razorpayOrderId: String!
    createdAt: DateTime!
    payload: JSON!
  }
`;

@Resolver()
class RazorpayWebhookResolver {
    constructor(private connection: TransactionalConnection) {}

    @Query()
    async razorpayWebhookEvents(
        @Args('orderId') orderId: string
    ): Promise<RazorpayWebhookEvent[]> {
        return this.connection.rawConnection.getRepository(RazorpayWebhookEvent).find({
            where: { razorpayOrderId: orderId },
            order: { createdAt: 'DESC' },
        });
    }
}

@VendurePlugin({
    imports: [PluginCommonModule],
    entities: [RazorpayWebhookEvent],
    compatibility: '^3.0.4',
    adminApiExtensions: {
        schema,
        resolvers: [RazorpayWebhookResolver],
    },
    configuration: config => {
        config.customFields.Order.push({
            name: 'razorpayStatus',
            type: 'string',
            label: [
                {
                    value: 'Razorpay Status',
                    languageCode: LanguageCode.en,
                },
            ],
            readonly: true,
        });
        return config;
    },
})
export class RazorpayWebhookPlugin {
    constructor(
        private connection: TransactionalConnection,
        private orderService: OrderService,
        private ctxService: RequestContextService,
        private channelService: ChannelService
    ) {}

    configure(app: INestApplication): void {
        const expressApp = app.getHttpAdapter().getInstance() as express.Express;
        const route = '/admin/api/webhook';

        expressApp.use(route, express.json(), this.createHandler());
        Logger.info(`[${loggerCtx}] 🟢 Webhook route registered at ${route}`, loggerCtx);
    }

    private createHandler() {
        return async (req: Request, res: Response) => {
            const signature = req.headers['x-razorpay-signature'] as string;
            const secret = process.env.RAZORPAY_WEBHOOK_SECRET!;
            const rawBody = JSON.stringify(req.body);
            const digest = crypto
                .createHmac('sha256', secret)
                .update(rawBody)
                .digest('hex');

            if (digest !== signature) {
                Logger.warn(`[${loggerCtx}] ❌ Signature mismatch`, loggerCtx);
                return res.status(400).send('Invalid signature');
            }

            const event = req.body.event;
            const razorpayOrderId =
                req.body.payload?.payment?.entity?.order_id ||
                req.body.payload?.order?.entity?.id;

            if (!razorpayOrderId) {
                Logger.warn(`[${loggerCtx}] ⚠️ Razorpay Order ID missing`, loggerCtx);
                return res.status(400).send('Missing Razorpay Order ID');
            }

            // Save webhook event
            await this.connection.rawConnection.getRepository(RazorpayWebhookEvent).save({
                event,
                payload: req.body,
                razorpayOrderId,
            });

            // Fetch matching order
            const order = await this.connection.rawConnection.getRepository(Order).findOne({
                where: {
                    customFields: {
                        razorpay_order_id: razorpayOrderId,
                    },
                },
                relations: ['channels'],
            });

            if (order) {
                // Update custom field razorpayStatus
                await this.connection.rawConnection.getRepository(Order).update(order.id, {
                    customFields: {
                        ...order.customFields,
                        razorpayStatus: event,
                    },
                });

                Logger.info(
                    `[${loggerCtx}] 📝 Order ${order.code} updated with RazorpayStatus = ${event}`,
                    loggerCtx
                );

                try {
                    const channel = await this.connection.rawConnection.getRepository(Channel).findOne({
                        where: { id: order.channels[0]?.id },
                    });

                    if (!channel) {
                        Logger.warn(`[${loggerCtx}] ⚠️ Channel not found for order ${order.code}`, loggerCtx);
                        return res.status(200).send('Order channel not found');
                    }

                    const ctx: RequestContext = await this.ctxService.create({
                        apiType: 'admin',
                        channelOrToken: channel,
                        languageCode: channel.defaultLanguageCode,
                    });

                    const currentOrder = await this.orderService.findOne(ctx, order.id);

                    if (currentOrder?.state === 'ArrangingPayment') {
                        if (event === 'payment.authorized') {
                            await this.orderService.transitionToState(ctx, order.id, 'PaymentAuthorized');
                            Logger.info(`[${loggerCtx}] 🔄 Order ${order.code} transitioned to PaymentAuthorized`, loggerCtx);
                        } else if (event === 'payment.captured' || event === 'order.paid') {
                            await this.orderService.transitionToState(ctx, order.id, 'PaymentSettled');
                            Logger.info(`[${loggerCtx}] 🔄 Order ${order.code} transitioned to PaymentSettled`, loggerCtx);
                        }
                    }
                } catch (err) {
                    Logger.error(`[${loggerCtx}] ❌ Failed to transition order state: ${err}`, loggerCtx);
                }
            }

            Logger.info(`[${loggerCtx}] ✅ Stored webhook event: ${event}`, loggerCtx);
            return res.status(200).send('Webhook received');
        };
    }
}
