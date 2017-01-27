import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';

import { PersonService } from '../person';
import { Person } from '../../models';

@Injectable()
export class PersonResolver implements Resolve<Person> {

  constructor (
    private personService: PersonService,
  ) {}

  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<Person> {
     return this.personService.getPerson(route.params['personId']);
  }

}
