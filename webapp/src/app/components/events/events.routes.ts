import { Routes } from '@angular/router';

import { EventOverviewComponent } from './event-overview';

export const EVENTS_ROUTES: Routes = [
  { path: 'events', component: EventOverviewComponent },
  { path: '', redirectTo: 'events', pathMatch: 'full' },
];
