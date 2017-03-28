import { Routes } from '@angular/router';

import { MyScheduleComponent } from './my-schedule.component';
import { AuthGuard } from '../../services';

export const MY_SCHEDULE_ROUTES: Routes = [
  {
    path: 'my-schedule',
    component: MyScheduleComponent,
    canActivate: [ AuthGuard ],
  },
];
