import { Routes } from '@angular/router';

import { PaperViewComponent } from './paper-view';
import { PaperOverviewComponent } from './paper-overview';
import { PaperResolver } from '../../services';

export const PAPER_ROUTES: Routes = [
  {
    path: 'papers/:paperId',
    component: PaperViewComponent,
    resolve: {
      paper: PaperResolver,
    },
  },
  { path: 'papers', component: PaperOverviewComponent, pathMatch: 'full' },
];
