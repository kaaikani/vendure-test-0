import { Injectable, type OnApplicationBootstrap } from "@nestjs/common"
import {
  OrderPlacedEvent,
   ShippingMethodService,
   RequestContextService,
   TransactionalConnection,
} from "@vendure/core"

import { EventBus } from "@vendure/core";
import { SmsService } from "../../../smsService"

declare module "@vendure/core" {
  interface CustomShippingMethodFields {
    messageTemplateId?: string
    dataType1?: string
    dataType2?: string
    dateType?: 'today' | 'tomorrow' | 'day_after_tomorrow';
  }
}

@Injectable()
export class OrderSmsService implements OnApplicationBootstrap {
  constructor(
    private eventBus: EventBus,
    private shippingMethodService: ShippingMethodService,
    private requestContextService: RequestContextService,
    private connection: TransactionalConnection,
  ) {
    // console.log("OrderSmsService constructor called")
  }

  onApplicationBootstrap() {
    // console.log("OrderSmsService.onApplicationBootstrap called - subscribing to OrderPlacedEvent")

    this.eventBus.ofType(OrderPlacedEvent).subscribe(
      (event) => {
        // console.log(`OrderPlacedEvent received for order: ${event.order.code}`)
        this.handleOrderPlaced(event)
      },
      (error) => {
        // console.error("Error in OrderPlacedEvent subscription:", error)
      },
    )

    // console.log("Successfully subscribed to OrderPlacedEvent")
  }

  private async handleOrderPlaced(event: OrderPlacedEvent) {
    // console.log(`handleOrderPlaced called for order: ${event.order.code}`)

    try {
      const { order, ctx } = event
      // console.log(`Processing order: ${order.code}, state: ${order.state}`)

      // Check if order has shipping lines
      if (!order.shippingLines || order.shippingLines.length === 0) {
        // console.log(`No shipping lines found for order: ${order.code}`)
        return
      }

      // console.log(`Order has ${order.shippingLines.length} shipping lines`)
      // console.log(`First shipping line: ${JSON.stringify(order.shippingLines[0], null, 2)}`)

      // Get the shipping method ID from the order
      const shippingMethodId = order.shippingLines[0].shippingMethodId
      if (!shippingMethodId) {
        console.log(`No shipping method ID found for order: ${order.code}`)
        return
      }

      // console.log(`Found shipping method ID: ${shippingMethodId}`)

      // Get customer phone number
      const customerPhone = order.customer?.phoneNumber
      if (!customerPhone) {
        // console.log(`No phone number found for customer: ${order.customer?.id}`)
        return
      }

      // console.log(`Found customer phone: ${customerPhone}`)

      // Format phone number (remove +91 if present)
      const formattedPhone = customerPhone.replace(/^\+91/, "")
      // console.log(`Formatted phone: ${formattedPhone}`)

      // Query the database directly to get the shipping method with custom fields
      // console.log(`Querying database for shipping method with ID: ${shippingMethodId}`)

      try {
        // First, try to get the shipping method using the service
        // console.log("Attempting to get shipping method using ShippingMethodService...")
        const shippingMethodFromService = await this.shippingMethodService.findOne(ctx, shippingMethodId)
        // console.log("ShippingMethodService result:", shippingMethodFromService)

        // Then try the direct repository approach
        // console.log("Attempting to get shipping method using direct repository query...")
        const shippingMethod = await this.connection.getRepository(ctx, "ShippingMethod").findOne({
          where: { id: shippingMethodId },
        })

        // console.log("Direct repository query result:", shippingMethod)

        if (!shippingMethod) {
          // console.log(`Shipping method with ID ${shippingMethodId} not found`)
          return
        }

        // console.log("Full shipping method object:", JSON.stringify(shippingMethod, null, 2))

        // Extract custom fields from shipping method
        // console.log("Attempting to access custom fields...")
        // console.log("Custom fields object:", shippingMethod.customFields)

        const messageTemplateId = shippingMethod.customFields?.messageTemplateId
        const dataType1 = shippingMethod.customFields?.dataType1
        const dataType2 = shippingMethod.customFields?.dataType2

        console.log(`Custom fields extracted: 
          messageTemplateId: ${messageTemplateId}
          dataType1: ${dataType1}
          dataType2: ${dataType2}
        `)

        // If no template ID is set, don't send SMS
        if (!messageTemplateId) {
          // console.log(`No message template ID configured for shipping method: ${shippingMethod.name}`)
          return
        }

        // Prepare variables based on dataType1 and dataType2
        const variables: { [key: string]: string } = {}
        // console.log("Preparing variables for SMS template")

        // Set variables based on dataType1 and dataType2
        if (dataType1) {
          variables[dataType1] = order.code
          // console.log(`Set variable ${dataType1} = ${order.code}`)
        }

//        if (dataType2) {
//   // Get tomorrow's date
//   const orderDate = new Date();
//   orderDate.setDate(orderDate.getDate() + 1); // 👈 Add 1 day

//   // Format date as DD-MM-YYYY
//   const formattedDate = `${orderDate.getDate().toString().padStart(2, "0")}-${(orderDate.getMonth() + 1)
//     .toString()
//     .padStart(2, "0")}-${orderDate.getFullYear()}`;

//   variables[dataType2] = formattedDate;
//   console.log(`Set variable ${dataType2} = ${formattedDate}`);
// }

if (dataType2) {
  const dateType = shippingMethod.customFields?.dateType;
  const date = new Date();

  switch (dateType) {
    case 'tomorrow':
      date.setDate(date.getDate() + 1);
      break;
    case 'day_after_tomorrow':
      date.setDate(date.getDate() + 2);
      break;
    case 'today':
    default:
      // do nothing, use today's date
      break;
  }

  const formattedDate = `${date.getDate().toString().padStart(2, "0")}-${(date.getMonth() + 1)
    .toString()
    .padStart(2, "0")}-${date.getFullYear()}`;

  variables[dataType2] = formattedDate;
  // console.log(`Set variable ${dataType2} = ${formattedDate} (based on dateType: ${dateType})`);
}



        console.log("Final variables object:", variables)

        // Create SMS service and send the message
        // console.log("Creating SmsService instance")
        const smsService = new SmsService(messageTemplateId, formattedPhone, variables)

        // console.log("Calling sendSms method")
        smsService.sendSms()
        // console.log(`SMS notification sent for order ${order.code} using template ${messageTemplateId}`)
      } catch (dbError) {
        // console.error("Error querying database for shipping method:", dbError)
      }
    } catch (error) {
      // console.error("Error in handleOrderPlaced:", error)
    //   console.error("Error stack:", error.stack)
    }
  }
}
