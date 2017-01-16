import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { ApiMapperService } from '../api';
import { AuthService } from '../auth';
import { ConferenceSession } from '../../models';

@Injectable()
export class SessionService {

  /**
   * Constructor for the event service.
   */
  constructor(
    private apiMapperService: ApiMapperService,
    private authService: AuthService,
    private authHttp: AuthHttp,
    private http: Http,
  ) { }

  private get httpService (): Http | AuthHttp {
    if (this.authService.loggedIn) {
      return this.authHttp;
    } else {
      return this.http;
    }
  }

  /**
   * Returns all sessions of the conference
   *
   * @return {Observable<ConferenceSession[]>} An observable containing a list of all sessions
   */
  public getAll (): Observable<ConferenceSession[]> {
    return this.httpService.get(API_ROUTES.sessions.all)
      .map(res => res.json())
      .map(list => list.map(this.apiMapperService.sessionApiToLocal));
  }

  public getFavorites (): Observable<ConferenceSession[]> {
    return this.httpService.get(API_ROUTES.sessions.all)
      .map(res => res.json())
      .map(list => list.map(this.apiMapperService.sessionApiToLocal));
  }

}
