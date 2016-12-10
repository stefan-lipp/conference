import { Routes } from '@angular/router';

import { PaperCreationComponent } from './paper-creation';

export const PAPERS_ROUTES: Routes = [
  { path: 'papers/create', component: PaperCreationComponent },
];
