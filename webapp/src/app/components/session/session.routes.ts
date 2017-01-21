import { Routes } from '@angular/router';

import { SessionOverviewComponent } from './session-overview';
import { SessionViewComponent } from './session-view';
import { SessionResolver } from 'app/services';

export const SESSION_ROUTES: Routes = [
  {
    path: 'sessions',
    children: [
      { path: '', component: SessionOverviewComponent },
      {
        path: ':sessionId',
        component: SessionViewComponent,
        resolve: {
          session: SessionResolver,
        },
      },
    ],
  },
];
