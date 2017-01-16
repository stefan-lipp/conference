import { Routes } from '@angular/router';
import { NoContentComponent } from './components';

import {
  EVENT_ROUTES,
  LOGIN_ROUTES,
  MY_SCHEDULE_ROUTES,
  REGISTER_ROUTES,
  SESSION_ROUTES,
} from './components';

export const ROUTES: Routes = [
  ...EVENT_ROUTES,
  ...LOGIN_ROUTES,
  ...MY_SCHEDULE_ROUTES,
  ...REGISTER_ROUTES,
  ...SESSION_ROUTES,
  { path: '**', component: NoContentComponent },
];
