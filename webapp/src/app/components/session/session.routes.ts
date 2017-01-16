import { Routes } from '@angular/router';

import { SessionOverviewComponent } from './session-overview';

export const SESSION_ROUTES: Routes = [
  { path: 'sessions', component: SessionOverviewComponent, pathMatch: 'full' },
];
