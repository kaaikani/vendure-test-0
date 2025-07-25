import { compileUiExtensions, setBranding } from '@vendure/ui-devkit/compiler';
import * as path from 'path';
import { BannerPlugin } from './plugins/banner/banner.plugin';
import { ManualCustomerChannelPlugin } from './plugins/manualadmincustomerchannel/manualadmincustomerchannel.plugin';

if (require.main === module) {
  customAdminUi({ recompile: true, devMode: false })
    .compile?.()
    .then(() => process.exit(0));
}

export function customAdminUi(options: {
  recompile: boolean;
  devMode: boolean;
}) {
  const compiledAppPath = path.join(__dirname, '../admin-ui');

  if (options.recompile) {
    return compileUiExtensions({
      outputPath: compiledAppPath,
      extensions: [
        BannerPlugin.UiExtensions,
        ManualCustomerChannelPlugin.UiExtensions,
        setBranding({
          smallLogoPath: path.join(__dirname, '/assets/KaaiKani.png'),
          largeLogoPath: path.join(__dirname, '/assets/KaaiKani.png'),
          faviconPath: path.join(__dirname, '/assets/KaaiKani.png'),
        }),
      ],
      devMode: options.devMode,
    });
  } else {
    return {
      path: path.join(compiledAppPath, 'dist'),
    };
  }
}
