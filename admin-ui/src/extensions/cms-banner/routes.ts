import { registerRouteComponent } from '@vendure/admin-ui/core';
import { BannerComponent } from './banner.component';

export default [
    registerRouteComponent({
        component: BannerComponent,
        path: '',
        title: 'Banner Management',
        breadcrumb: 'Banners',
    }),
];
