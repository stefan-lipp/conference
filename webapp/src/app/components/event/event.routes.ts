import { Routes } from '@angular/router';

import { EventViewComponent } from './event-view';
import { EventOverviewComponent } from './event-overview';
import { EventResolver } from '../../services';

export const EVENT_ROUTES: Routes = [
  {
    path: 'events/:eventId',
    component: EventViewComponent,
    resolve: {
      event: EventResolver,
    },
  },
  { path: 'events', component: EventOverviewComponent, pathMatch: 'full' },
  { path: '', redirectTo: 'events', pathMatch: 'full' },
];
