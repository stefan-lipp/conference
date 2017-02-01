import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { AuthHttp } from 'angular2-jwt';
import { Observable } from 'rxjs';

import { ApiMapperService } from '../api';
import { AuthService } from '../auth';
import { ConferenceSession } from '../../models';

import { API_ROUTES } from '../api/routes';

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

  /**
   * Gets all sessions.
   *
   * @return {Observable<ConferenceSession[]>} Observable containing a list of sessions
   */
  public getAll (): Observable<ConferenceSession[]> {
    return this.httpService.get(API_ROUTES.sessions.all)
      .map(res => res.json())
      .map(list => list.map(this.apiMapperService.sessionApiToLocal));
  }

  /**
   * Gets a session with a given identifier.
   *
   * @param {number} sessionId The session identifier.
   * @return {Observable<ConferenceSession>} Observable containing the session.
   */
  public getSession (sessionId: number): Observable<ConferenceSession> {
    return this.httpService.get(API_ROUTES.sessions.single
      .replace(':sessionId', sessionId.toString(10)))
      .map(res => res.json())
      .map(this.apiMapperService.sessionApiToLocal);
  }

  private get httpService (): Http | AuthHttp {
    if (this.authService.loggedIn) {
      return this.authHttp;
    } else {
      return this.http;
    }
  }

}
