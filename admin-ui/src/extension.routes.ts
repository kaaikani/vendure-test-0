export const extensionRoutes = [  {
    path: 'extensions/banner',
    loadChildren: () => import('./extensions/cms-banner/routes'),
  },
  {
    path: 'extensions/manualadmincustomerchannel',
    loadChildren: () => import('./extensions/switch-channel/routes'),
  }];
