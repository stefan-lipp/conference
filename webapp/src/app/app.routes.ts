import { Routes } from '@angular/router';
import { NoContentComponent } from './components';

import {
  ADMIN_ROUTES,
  EVENT_ROUTES,
  LOGIN_ROUTES,
  REGISTER_ROUTES,
  MY_SCHEDULE_ROUTES,
} from './components/';

export const ROUTES: Routes = [
  ...ADMIN_ROUTES,
  ...EVENT_ROUTES,
  ...LOGIN_ROUTES,
  ...REGISTER_ROUTES,
  ...MY_SCHEDULE_ROUTES,
  { path: '**', component: NoContentComponent },
];
