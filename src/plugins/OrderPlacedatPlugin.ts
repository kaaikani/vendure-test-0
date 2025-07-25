import {
  VendurePlugin,
  PluginCommonModule,
  OrderStateTransitionEvent,
  EventBus,
  TransactionalConnection,
  Order,
  RequestContext,
  ID,
} from '@vendure/core';
import { OnApplicationBootstrap } from '@nestjs/common';

declare module '@vendure/core' {
  interface CustomOrderFields {
    placedAtISTFormatted?: Date;
  }
}
@VendurePlugin({
  imports: [PluginCommonModule],
  compatibility: '^3.0.4',
})
export class OrderPlacedAtPlugin implements OnApplicationBootstrap {
  constructor(
    private eventBus: EventBus,
    private connection: TransactionalConnection
  ) {}

  onApplicationBootstrap() {
    this.eventBus.ofType(OrderStateTransitionEvent).subscribe(async (event) => {
      const targetStates = ['PaymentAuthorized', 'PaymentSettled'];
      if (!targetStates.includes(event.toState)) return;

      const ctx: RequestContext = event.ctx;
      const order = event.order;
      const orderId: ID = order.id;
      const utcPlacedAt = order.orderPlacedAt;
      if (!utcPlacedAt) return;

      if (
        event.fromState === 'PaymentAuthorized' &&
        event.toState === 'PaymentSettled'
      ) {
        return;
      }

      // 👉 Manually add +5:30 (330 minutes) to UTC timestamp
      const placedAtIST = new Date(utcPlacedAt.getTime() + 330 * 60 * 1000);

      await this.connection.getRepository(ctx, Order).update(orderId, {
        customFields: {
          ...order.customFields,
          placedAtISTFormatted: placedAtIST, // Stored as IST-adjusted datetime
        },
      });

      console.log(
        `🕒 Order ${order.code} manually adjusted placedAtISTFormatted: ${placedAtIST.toISOString()}`
      );
    });
  }
}
