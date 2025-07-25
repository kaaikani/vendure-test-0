// src/plugins/order-sms-notification.plugin.ts

import { Injectable, OnApplicationBootstrap } from '@nestjs/common';
import {
  VendurePlugin,
  PluginCommonModule,
  OrderStateTransitionEvent,
  EventBus,
} from '@vendure/core';
import { SmsService } from '../smsService'; // Adjust path as needed

@Injectable()
export class OrderDeliveredListener implements OnApplicationBootstrap {
  constructor(private eventBus: EventBus) {}

  onApplicationBootstrap() {
    this.eventBus.ofType(OrderStateTransitionEvent).subscribe(async (event) => {
      if (event.fromState === 'Shipped' && event.toState === 'Delivered') {
        const phone = event.order.customer?.phoneNumber;
        if (phone) {
          const smsService = new SmsService(
            '646b0f38d6fc052379785ec2',
            phone,
            { orderId: event.order.id.toString() }
          );
          await smsService.sendSms();
        }
      }
    });
  }
}

@VendurePlugin({
  imports: [PluginCommonModule],
  providers: [OrderDeliveredListener],
      compatibility: '^3.0.4',

})
export class OrderSmsNotificationPlugin {}
