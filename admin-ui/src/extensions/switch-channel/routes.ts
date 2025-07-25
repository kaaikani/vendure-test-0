import { registerRouteComponent } from '@vendure/admin-ui/core';
import { AssignComponent } from './components/assignCustomer.component';

export default [
    registerRouteComponent({
        component: AssignComponent,
        path: '',
        title: 'Switch Customer from one to another Channel',
        breadcrumb: 'Switch Channel',
    }),
];
