import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api-routes';
import { AuthService } from '../auth';
import { Person } from '../../models';

/**
 * API service for all things person, author and speaker related
 *
 * @export
 * @class PersonService
 */
@Injectable()
export class PersonService {

  constructor(
    private authService: AuthService,
    private authHttp: AuthHttp,
    private http: Http,
  ) { }

  /**
   * HTTP service to use
   *
   * @readonly
   * @private
   * @type {(Http | AuthHttp)}
   * @memberOf EventService
   */
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
   * @http GET
   * @param {string} personId
   * @returns {Observable<Person>}
   *
   * @memberOf PersonService
   */
  public getPerson (personId: string): Observable<Person> {
    return this.httpService.get(API_ROUTES.person.byId.replace(':personId', personId))
      .map(res => res.json())
      .map(list => Person.fromAPI(list));
  }
}
