import { Routes } from '@angular/router';

import {
  EVENTS_ROUTES,
  PAPERS_ROUTES,
  LOGIN_ROUTES,
  REGISTER_ROUTES,
} from './components/';

export const ROUTES: Routes = [
  ...EVENTS_ROUTES,
  ...PAPERS_ROUTES,
  ...LOGIN_ROUTES,
  ...REGISTER_ROUTES,
];
