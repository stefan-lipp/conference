import { Routes } from '@angular/router';

import { EventOverviewComponent } from './event-overview.component';

export const EVENT_ROUTES: Routes = [
  { path: 'events', component: EventOverviewComponent },
  { path: '', redirectTo: 'events', pathMatch: 'full' },
];
