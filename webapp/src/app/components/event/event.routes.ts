import { Routes } from '@angular/router';

import { EventViewComponent } from './event-view';
import { EventOverviewComponent } from './event-overview';
import { EventResolver } from '../../services';

export const EVENT_ROUTES: Routes = [
  {
    path: 'events',
    children: [
      { path: '', component: EventOverviewComponent, pathMatch: 'full' },
      {
        path: ':eventId',
        component: EventViewComponent,
        resolve: {
          event: EventResolver,
        },
      },
      {
        path: ':eventId/:eventName',
        component: EventViewComponent,
        resolve: {
          event: EventResolver,
        },
      },
    ],
  },
  { path: '', redirectTo: 'events', pathMatch: 'full' },
];
