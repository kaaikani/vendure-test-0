import { addNavMenuItem } from '@vendure/admin-ui/core';

export default [
    addNavMenuItem({
        id: 'banner-ui',
        label: 'Banner Section',
        routerLink: ['/extensions/banner'],
        icon: 'image',
    }, 'marketing'),
];
