import { Routes } from '@angular/router';

import { AuthGuard, AdminGuard } from '../../services';
import { ScheduleEditorComponent } from './schedule';

export const ADMIN_ROUTES: Routes = [
  {
    path: 'admin',
    canActivate: [ AuthGuard, AdminGuard ],
    children: [
      {
        path: 'schedule',
        component: ScheduleEditorComponent,
      },
    ],
  },
];
