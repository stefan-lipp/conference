import { Routes } from '@angular/router';

import { PersonViewComponent } from './person-view';
import { AccountSettingsComponent } from './account-settings';
import {
  PersonResolver,
  PaperByAuthorResolver,
  EventOfSpeakerResolver,
} from '../../services';


export const PERSON_ROUTES: Routes = [
  {
    path: 'person/:personId',
    component: PersonViewComponent,
    resolve: {
      person: PersonResolver,
      papers: PaperByAuthorResolver,
      talks: EventOfSpeakerResolver,
    },
  },
  {
    path: 'settings',
    component: AccountSettingsComponent,
  },
];
