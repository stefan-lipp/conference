import { Routes } from '@angular/router';

import { DirectionsComponent } from './directions.component';
import { DirectionsResolver } from '../../services';

export const DIRECTION_ROUTES: Routes = [
  {
    path: 'directions/:roomId',
    component: DirectionsComponent,
    resolve: {
      room: DirectionsResolver,
    },
  },
];
