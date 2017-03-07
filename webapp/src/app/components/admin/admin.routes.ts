import { Routes } from '@angular/router';

import { AuthGuard, AdminGuard } from '../../services';
import { ScheduleEditorComponent } from './schedule';
import { AdminOverviewComponent } from './overview';

export const ADMIN_ROUTES: Routes = [
  {
    path: 'admin',
    canActivate: [ AuthGuard, AdminGuard ],
    children: [
      {
        path: '',
        component: AdminOverviewComponent,
      },
      {
        path: 'schedule',
        component: ScheduleEditorComponent,
      },
    ],
  },
];
