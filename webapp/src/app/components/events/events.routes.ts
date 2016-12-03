import { Routes } from '@angular/router';

import { EventsComponent } from './events.component';

export const EVENT_ROUTES: Routes = [
  { path: 'events', component: EventsComponent },
  { path: '', redirectTo: 'events', pathMatch: 'full' },
];
