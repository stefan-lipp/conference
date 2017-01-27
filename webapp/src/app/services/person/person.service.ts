import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { ApiMapperService } from '../api';
import { AuthService } from '../auth';
import { Person } from '../../models';

@Injectable()
export class PersonService {

  /**
   * Constructor for the person service.
   */
  constructor(
    private apiMapperService: ApiMapperService,
    private authService: AuthService,
    private authHttp: AuthHttp,
    private http: Http,
  ) {  }

  private get httpService (): Http | AuthHttp {
    if (this.authService.loggedIn) {
      return this.authHttp;
    } else {
      return this.http;
    }
  }

  /**
   * Returns a person by id
   *
   * @return {Observable<Personn>} An observable containing the person
   */
  public getPerson (personId: string): Observable<Person> {
    return this.httpService.get(API_ROUTES.person.byId.replace(':personId', personId))
      .map(res => res.json())
      .map(list => Person.fromAPI(list));
  }

  /**
   * Gets the currently logged in person.
   *
   * @return {Observable<Person>} An observable containing the person
   */
  public getLoggedInPerson (): Observable<Person> {
    return this.httpService.get(API_ROUTES.person.loggedIn)
      .map(res => res.json());
  }
}
