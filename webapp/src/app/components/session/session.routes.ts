import { Routes } from '@angular/router';

import { SessionViewComponent } from './session-view';
import { SessionResolver } from '../../services';

export const SESSION_ROUTES: Routes = [
  {
    path: 'sessions/:sessionId',
    component: SessionViewComponent,
    resolve: {
      session: SessionResolver,
    },
  },
];
