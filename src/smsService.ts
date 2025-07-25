import request from 'request';

export class SmsService {
  private smsData: any;

  constructor(
    private templateId: string,
    private mobiles: string,
    private variables: { [key: string]: string }
  ) {
    this.smsData = {
      template_id: templateId,
      sender: 'KAIMSG',
      mobiles: '+91' + mobiles,
      ...variables,  // this will flatten OTP: '1234' into JSON
    };
  }

  sendSms() {
    const path = `https://control.msg91.com/api/v5/flow/`;
    const options = {
      method: 'POST',
      url: path,
      body: JSON.stringify(this.smsData),
      headers: {
        accept: 'application/json',
        authkey: '395929A2YW1qXt4afm682c115cP1', 
        'content-type': 'application/json',
      },
    };

    request(options, (error: any, response: any) => {
      if (error) {
        console.error(error);
      } else {
        console.log('SMS API Response:', response.body);
      }
    });
  }
}


