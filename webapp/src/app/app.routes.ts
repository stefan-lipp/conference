import { Routes } from '@angular/router';
import { NoContentComponent } from './components';

import {
  EVENT_ROUTES,
  LOGIN_ROUTES,
  REGISTER_ROUTES,
  MY_SCHEDULE_ROUTES,
  PAPER_ROUTES,
  PERSON_ROUTES,
} from './components/';

export const ROUTES: Routes = [
  ...EVENT_ROUTES,
  ...LOGIN_ROUTES,
  ...REGISTER_ROUTES,
  ...MY_SCHEDULE_ROUTES,
  ...PERSON_ROUTES,
  ...PAPER_ROUTES,
  { path: '**', component: NoContentComponent },
];
