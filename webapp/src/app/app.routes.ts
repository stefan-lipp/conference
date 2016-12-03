import { Routes } from '@angular/router';

import {
  EVENT_ROUTES,
  LOGIN_ROUTES,
  REGISTER_ROUTES,
} from './components/';

export const ROUTES: Routes = [
  ...EVENT_ROUTES,
  ...LOGIN_ROUTES,
  ...REGISTER_ROUTES,
];
