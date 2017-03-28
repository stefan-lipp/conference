import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api-routes';
import { AuthService } from '../auth';
import { Paper } from '../../models';

/**
 * API service for all things Paper related
 *
 * @export
 * @class PaperService
 */
@Injectable()
export class PaperService {

  constructor(
    private authService: AuthService,
    private authHttp: AuthHttp,
    private http: Http,
  ) {  }

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
   * Retrieves a paper from the API by id
   *
   * @http GET
   * @return {Observable<Paper[]>} An observable containing the paper
   *
   * @memberOf PaperService
   */
  public getPaperByAuthor (personId: string): Observable<Paper[]> {
    return this.httpService.get(API_ROUTES.paper.byAuthor.replace(':personId', personId))
      .map(res => res.json())
      .map(list => list.map(Paper.fromAPI));
  }
}
