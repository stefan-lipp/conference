import { Routes } from '@angular/router';
import { NoContentComponent } from './components';

import {
  EVENT_ROUTES,
  LOGIN_ROUTES,
  REGISTER_ROUTES,
} from './components/';

export const ROUTES: Routes = [
  ...EVENT_ROUTES,
  ...LOGIN_ROUTES,
  ...REGISTER_ROUTES,
  { path: '**', component: NoContentComponent },
];
