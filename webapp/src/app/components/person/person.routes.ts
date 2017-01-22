import { Routes } from '@angular/router';

import { PersonViewComponent } from './person-view';
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
];
