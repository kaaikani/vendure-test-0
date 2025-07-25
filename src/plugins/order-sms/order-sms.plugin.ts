import { CustomFieldConfig, EventBus, LanguageCode, PluginCommonModule, RequestContextService, ShippingMethodService, TransactionalConnection, Type, VendurePlugin } from '@vendure/core';

import { ORDER_SMS_PLUGIN_OPTIONS } from './constants';
import { PluginInitOptions } from './types';
import { OrderSmsService } from './services/order-sms.service';
const shippingMethodCustomFields: CustomFieldConfig[] = [
  {
    name: 'messageTemplateId',
    type: 'string',
    label: [{ languageCode: LanguageCode.en, value: 'Message Template ID' }],
    description: [
      {
        languageCode: LanguageCode.en,
        value: 'ID of the message template to send after selecting this shipping method.',
      },
    ],
    nullable: true,
    public: true,
  },
  {
    name: 'dataType1',
    type: 'string',
    label: [{ languageCode: LanguageCode.en, value: 'Data Type 1' }],
    description: [
      {
        languageCode: LanguageCode.en,
        value: 'First variable name used in the message template (e.g. ##var##)',
      },
    ],
    nullable: true,
    public: true,
  },
  {
    name: 'dataType2',
    type: 'string',
    label: [{ languageCode: LanguageCode.en, value: 'Data Type 2' }],
    description: [
      {
        languageCode: LanguageCode.en,
        value: 'Second variable name used in the message template (e.g. ##Var##)',
      },
    ],
    nullable: true,
    public: true,
  },
  {
    name: "dateType",
    type: "string",
    label: [{ languageCode: LanguageCode.en, value: "Date Type for Data Type 2" }],
    description: [
      {
        languageCode: LanguageCode.en,
        value: "Select which date to send for Data Type 2 in the SMS message",
      },
    ],
    options: [
      { value: "today", label: [{ languageCode: LanguageCode.en, value: "Today" }] },
      { value: "tomorrow", label: [{ languageCode: LanguageCode.en, value: "Tomorrow" }] },
      { value: "day_after_tomorrow", label: [{ languageCode: LanguageCode.en, value: "Day After Tomorrow" }] },
    ],
    nullable: true,
    public: true,
  },
]
@VendurePlugin({
  imports: [PluginCommonModule],
  providers: [
    { provide: ORDER_SMS_PLUGIN_OPTIONS, useFactory: () => OrderSmsPlugin.options },
    OrderSmsService,
  ],
  configuration: config => {
    config.customFields.ShippingMethod.push(...shippingMethodCustomFields)
    return config;
  },
  compatibility: '^3.0.0',
})
export class OrderSmsPlugin {
  static options: PluginInitOptions;

  static init(options: PluginInitOptions): Type<OrderSmsPlugin> {
    this.options = options;
    return OrderSmsPlugin;
  }
}
