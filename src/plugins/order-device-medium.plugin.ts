import {
  VendurePlugin,
  PluginCommonModule,
  OrderPlacedEvent,
  EventBus,
  TransactionalConnection,
  Order,
  RequestContext,
  ID,
  CustomFieldConfig,
  LanguageCode,
} from '@vendure/core';
import { OnApplicationBootstrap } from '@nestjs/common';

declare module '@vendure/core' {
  interface CustomOrderFields {
    deviceMedium?: string;
  }
}

@VendurePlugin({
  imports: [PluginCommonModule],
  compatibility: '^3.0.4',
  configuration: config => {
    config.customFields.Order.push({
      name: 'deviceMedium',
      type: 'string',
      label: [
        {
          languageCode: LanguageCode.en,
          value: 'Device Medium',
        },
      ],
      description: [
        {
          languageCode: LanguageCode.en,
          value: 'Tracks whether the order came from Website, Android, or iOS',
        },
      ],
      nullable: true,
      readonly: true,
    } as CustomFieldConfig);
    return config;
  },
})
export class OrderDeviceMediumPlugin implements OnApplicationBootstrap {
  constructor(
    private eventBus: EventBus,
    private connection: TransactionalConnection
  ) {}

  onApplicationBootstrap() {
    this.eventBus.ofType(OrderPlacedEvent).subscribe(async (event) => {
      const ctx: RequestContext = event.ctx;
      const order: Order = event.order;
      const orderId: ID = order.id;

      if (!ctx.req) return;

      const userAgent = ctx.req.headers['user-agent']?.toLowerCase() || '';
      const customHeader = ctx.req.headers['x-device-medium']?.toString().toLowerCase();

      let deviceMedium = 'Unknown';

      if (customHeader) {
        deviceMedium = this.normalizeDevice(customHeader);
      } else if (userAgent.includes('android')) {
        deviceMedium = 'Android';
      } else if (userAgent.includes('iphone') || userAgent.includes('ios')) {
        deviceMedium = 'iOS';
      } else if (
        userAgent.includes('windows') ||
        userAgent.includes('mac') ||
        userAgent.includes('linux')
      ) {
        deviceMedium = 'Website';
      }

      await this.connection.getRepository(ctx, Order).update(orderId, {
        customFields: {
          ...order.customFields,
          deviceMedium,
        },
      });

      console.log(`📱 Order ${order.code} deviceMedium set to: ${deviceMedium}`);
    });
  }

  private normalizeDevice(input: string): string {
    switch (input.toLowerCase()) {
      case 'android':
        return 'Android';
      case 'ios':
        return 'iOS';
      case 'web':
      case 'website':
        return 'Website';
      default:
        return 'Unknown';
    }
  }
}
