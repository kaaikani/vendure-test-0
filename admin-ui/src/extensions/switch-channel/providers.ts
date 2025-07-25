import { addNavMenuItem } from '@vendure/admin-ui/core';

export default [
    addNavMenuItem(
        {
            id: 'manual-1', // Unique ID for the item
            label: 'Switch Channel', // Item label
            routerLink: ['/extensions/manualadmincustomerchannel'],
            icon: 'assign-user',
        },
        'customers', // The section ID where the item will be added
        'Customer groups' // (Optional) ID of an existing item to place this item before
    ),
];