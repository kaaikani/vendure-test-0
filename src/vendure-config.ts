import { compileUiExtensions } from '@vendure/ui-devkit/compiler';
import { AdminUiPlugin } from '@vendure/admin-ui-plugin';
import { AssetServerPlugin } from '@vendure/asset-server-plugin';
import {
  DefaultSearchPlugin,
  VendureConfig,
  defaultPromotionConditions,
  defaultOrderProcess,
  dummyPaymentHandler,
  NativeAuthenticationStrategy,
  LogLevel,
  DefaultLogger,
  LanguageCode,
} from '@vendure/core';
import { BullMQJobQueuePlugin } from '@vendure/job-queue-plugin/package/bullmq';
import { EmailPlugin, defaultEmailHandlers } from '@vendure/email-plugin';
import 'dotenv/config';
import { orderCanceledNotificationProcess } from './customOrderProcess/order-canceled-notification-process';
import { CancelOrderPlugin } from './plugins/cancelOrderPlugin';
import { CheckUniquePhonePlugin } from './plugins/checkUniquePhonePlugin';
import { CustomEventPlugin } from './plugins/customEventPlugin';
import { CustomTokenPlugin } from './plugins/customTokenPlugin';
import { CollectionIsPrivatePlugin } from './plugins/collectionIsPrivate';
import { PromotionPlugin } from './plugins/promotionPlugin';
import { shouldApplyCouponcode } from './customPromotionConditions/shouldApply';
import { ChannelPlugin } from './plugins/channelPlugin';
import * as path from 'path';
import { BannerPlugin } from './plugins/banner/banner.plugin';
import { ManualCustomerChannelPlugin } from './plugins/manualadmincustomerchannel/manualadmincustomerchannel.plugin';

import { configureCustomS3AssetStorage } from './cdn-aware-s3-storage';
import { CustomerChannelPlugin } from './plugins/customer-channel-plugin';
import { PhoneOtpPlugin } from './plugins/otpmechanism/plugins/phone-otp.plugin';
import { PhoneOtpAuthenticationStrategy } from './plugins/otpmechanism/strategies/phone-otp.strategy';
import { OrderSmsPlugin } from './plugins/order-sms/order-sms.plugin';
import { RazorpayPlugin } from './plugins/razorpay/razorpay-plugin';
import { OrderSmsNotificationPlugin } from './plugins/order-sms-notification.plugin';
import { razorpayPaymentMethodHandler } from './plugins/razorpay/razorpay-payment-method';
import { OrderPlacedAtPlugin } from './plugins/OrderPlacedatPlugin';
import { RazorpayWebhookPlugin } from './plugins/webhook/RazorpayWebhookPlugin';
import { OrderDeviceMediumPlugin } from './plugins/order-device-medium.plugin';
const IS_DEV = process.env.APP_ENV === 'dev';



export const config: VendureConfig = {
  // logger: new DefaultLogger({ level: LogLevel.Verbose }),
  apiOptions: {
    port: 80,
    adminApiPath: 'admin-api',
    shopApiPath: 'shop-api',
    adminListQueryLimit:2000,
    ...(IS_DEV
      ? {
        adminApiPlayground: {
          settings: { 'request.credentials': 'include' } as any,
        },
        adminApiDebug: true,
        shopApiPlayground: {
          settings: { 'request.credentials': 'include' } as any,
        },
        shopApiDebug: true,
      }
      : {}),
  },
  authOptions: {
    tokenMethod: ['bearer', 'cookie'],
    superadminCredentials: {
      identifier: process.env.SUPERADMIN_USERNAME,
      password: process.env.SUPERADMIN_PASSWORD,
    },
    shopAuthenticationStrategy: [
      new PhoneOtpAuthenticationStrategy(),
      new NativeAuthenticationStrategy(),
    ],
    cookieOptions: {
      secret: process.env.COOKIE_SECRET,
    },
    requireVerification: true,
      },
  dbConnectionOptions: {
    type: 'mysql',
    synchronize: true,
    migrations: [path.join(__dirname, './migrations/*.+(js|ts)')],
    logging: false,
    database: process.env.DB_NAME,
    host: process.env.DB_HOST,
    port: +process.env.DB_PORT,
    username: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,

  },
 paymentOptions: {
    paymentMethodHandlers: [dummyPaymentHandler],
},
  customFields: {
  Order: [
    {
      name: 'placedAtISTFormatted',
      type: 'datetime',
      label: [{ languageCode: LanguageCode.en, value: 'Placed At (IST)' }],
      nullable: true,
      readonly: true,
    },
  ],
   ProductVariant: [
    {
      name: 'hsnCode',
      type: 'string',
      label: [{ languageCode: LanguageCode.en, value: 'HSN CODE' }],
    },
  ],
},
  promotionOptions: {
    promotionConditions: [...defaultPromotionConditions, shouldApplyCouponcode],
  },

  plugins: [

    AssetServerPlugin.init({
      route: 'assets',
      assetUploadDir: path.join(__dirname, 'assets'),
      storageStrategyFactory: configureCustomS3AssetStorage({
        bucket: 'cdn.kaaikani.co.in',
        credentials: {
          accessKeyId: process.env.AWS_ACCESS_KEY_ID!,
          secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY!,
        },
        nativeS3Configuration: {
          region: 'ap-south-1',
        },
      }),
      assetUrlPrefix: (_ctx, _identifier) => {
        return '';
      },
      // assetUrlPrefix: 'https://cdn.kaaikanistore.com/',
   
    }),

      // AssetServerPlugin.init({
      //       route: 'assets',
      //       assetUploadDir: path.join(__dirname, '../static/assets'),
      //       // For local dev, the correct value for assetUrlPrefix should
      //       // be guessed correctly, but for production it will usually need
      //       // to be set manually to match your production url.
      //       assetUrlPrefix: IS_DEV ? undefined : 'https://www.my-shop.com/assets',
      //   }),


    BullMQJobQueuePlugin.init({
      connection: {
        host: process.env.REDIS_HOST,
        port: Number(process.env.REDIS_PORT),
        username: process.env.REDIS_USERNAME,
        password: process.env.REDIS_PASSWORD,
        maxRetriesPerRequest: null,
      },
      setRetries: (queueName, job) => {
        if (queueName === 'send-email') {
          return 10;
        }
        return job.retries ?? 3;
      },
      setBackoff: () => {
        return {
          type: 'exponential',
          delay: 10000,
        };
      },
      workerOptions: {
        removeOnComplete: {
          age: 60 * 60 * 24 * 7,
          count: 5000,
        },
        removeOnFail: {
          age: 60 * 60 * 24 * 7,
          count: 1000,
        },
      },
    }),



    DefaultSearchPlugin.init({ bufferUpdates: false, indexStockStatus: true }),
    EmailPlugin.init({
      devMode: true,
      outputPath: path.join(__dirname, "../static/email/test-emails"),
      route: "mailbox",
      handlers: defaultEmailHandlers,
      templatePath: path.join(__dirname, "../static/email/templates"),
      globalTemplateVars: {
            fromAddress: '"example" <noreply@example.com>',
        verifyEmailAddressUrl: "http://localhost:8080/verify",
        passwordResetUrl: "http://localhost:8080/password-reset",
        changeEmailAddressUrl:
          "http://localhost:8080/verify-email-address-change",
      },
    }),
    AdminUiPlugin.init({
      port: 3002,
      app: {
        path: path.join(__dirname, '../admin-ui/dist'),
      },
      route: 'admin'
    }),
    CustomerChannelPlugin,
    PhoneOtpPlugin,
    ChannelPlugin,
    CheckUniquePhonePlugin,
    PromotionPlugin,
    CancelOrderPlugin,
    CustomEventPlugin,
    CustomTokenPlugin,
    CollectionIsPrivatePlugin,
    ManualCustomerChannelPlugin,
    BannerPlugin,
      RazorpayPlugin,
      OrderSmsPlugin,
      OrderSmsNotificationPlugin,
      OrderPlacedAtPlugin,
      RazorpayWebhookPlugin,
      OrderDeviceMediumPlugin,
],
  orderOptions: {
    process: [defaultOrderProcess, orderCanceledNotificationProcess],
  },
};

