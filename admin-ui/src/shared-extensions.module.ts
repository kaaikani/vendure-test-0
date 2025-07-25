import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import SharedProviders_0_0 from './extensions/cms-banner/providers';
import SharedProviders_1_0 from './extensions/switch-channel/providers';


@NgModule({
    imports: [CommonModule, ],
    providers: [...SharedProviders_0_0, ...SharedProviders_1_0],
})
export class SharedExtensionsModule {}
