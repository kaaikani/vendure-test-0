import { StorageService } from './../storageService';
import { OnApplicationBootstrap } from '@nestjs/common';
import { EventBus, PasswordResetEvent, PluginCommonModule, VendurePlugin } from '@vendure/core';
import { filter } from 'rxjs/operators';

@VendurePlugin({
    imports: [PluginCommonModule],
    compatibility: '^3.0.4',
  })
export class CustomEventPlugin implements OnApplicationBootstrap {

  constructor(private eventBus: EventBus) {}

  async onApplicationBootstrap() {

    this.eventBus
      .ofType(PasswordResetEvent)
      .subscribe((event) => {
        StorageService.userInfo = event.user;
        StorageService.passwordResetToken = event.user.getNativeAuthenticationMethod().passwordResetToken
        console.log('passwordResetToken', StorageService.passwordResetToken);
      });
  }
}