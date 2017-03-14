import { Routes } from '@angular/router';
import { NoContentComponent } from './components';

import {
  ADMIN_ROUTES,
  DIRECTION_ROUTES,
  EVENT_ROUTES,
  LOGIN_ROUTES,
  MY_SCHEDULE_ROUTES,
  PERSON_ROUTES,
  REGISTER_ROUTES,
  SESSION_ROUTES,
  VOTING_ROUTES,
} from './components/';

export const ROUTES: Routes = [
  ...ADMIN_ROUTES,
  ...DIRECTION_ROUTES,
  ...EVENT_ROUTES,
  ...LOGIN_ROUTES,
  ...MY_SCHEDULE_ROUTES,
  ...PERSON_ROUTES,
  ...REGISTER_ROUTES,
  ...SESSION_ROUTES,
  ...VOTING_ROUTES,
  { path: '**', component: NoContentComponent },
];
