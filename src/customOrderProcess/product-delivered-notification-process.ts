import { SmsService } from "../smsService";
import { OrderProcess } from "@vendure/core";
//Dont need Just reference code how state managemnet works
export const productDeliveredNotificationProcess: OrderProcess<"ProductDeliveredNotificationProcess"> = {
  transitions: {
    Shipped: {
      to: ["ProductDeliveredNotificationProcess"],
      mergeStrategy: "replace",
    },
    ProductDeliveredNotificationProcess: {
      to: ["Delivered", "Shipped"],
    },
  },

  onTransitionStart(fromState, toState, data) {
    if (
      fromState === "ProductDeliveredNotificationProcess" &&
      toState === "Delivered"
    ) {
      const smsService = new SmsService(
        "646b0f38d6fc052379785ec2", // template ID for "delivered"
        data.order.customer!.phoneNumber,
        {
          orderId: data.order.id.toString(), // variable expected by template
        }
      );
      smsService.sendSms();
    }
  },
};
