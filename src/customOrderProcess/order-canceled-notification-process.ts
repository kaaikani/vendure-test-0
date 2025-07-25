import { SmsService } from "../smsService";
import { OrderProcess } from "@vendure/core";

export const orderCanceledNotificationProcess: OrderProcess<"OrderCanceledNotificationProcess"> = {
  onTransitionStart(fromState, toState, data) {
    console.log(`current state ${fromState} to ${toState}`);
    console.log(`Order code: ${data.order.code}`); // ✅ Log the order code

    if (toState === "Cancelled") {
      data.order.payments.forEach(() => {
        const smsService = new SmsService(
          "647ad6d8d6fc0553390fdd64", // template ID for "order cancelled"
          data.order.customer!.phoneNumber,
          {
            var1: data.order.code.toString(), // or use data.order.code if needed
          }
        );
        smsService.sendSms();
      });
    }
  },
};
