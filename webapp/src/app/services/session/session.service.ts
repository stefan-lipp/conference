import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { AuthHttp } from 'angular2-jwt';
import { Observable } from 'rxjs';

import { AuthService } from '../auth';
import { ConferenceSession } from '../../models';

import { API_ROUTES } from '../api-routes';

/**
 * API service for all things session related
 *
 * @export
 * @class SessionService
 */
@Injectable()
export class SessionService {

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
   * Gets all sessions.
   *
   * @http GET
   * @return {Observable<ConferenceSession[]>} Observable containing a list of sessions
   *
   * @memberOf SessionService
   */
  public getAll (): Observable<ConferenceSession[]> {
    return this.httpService.get(API_ROUTES.sessions.all)
      .map(res => res.json())
      .map(list => list.map(ConferenceSession.fromAPI));
  }

  /**
   * Gets a session with a given identifier.
   *
   * @http GET
   * @param {number} sessionId The session identifier.
   * @return {Observable<ConferenceSession>} Observable containing the session.
   *
   * @memberOf SessionService
   */
  public getSession (sessionId: number): Observable<ConferenceSession> {
    return this.httpService.get(API_ROUTES.sessions.single
      .replace(':sessionId', sessionId.toString(10)))
      .map(res => res.json())
      .map(ConferenceSession.fromAPI);
  }

  /**
   * Creates a new session via API call
   *
   * @http POST
   * @param {ConferenceSession} session
   * @returns {Observable<ConferenceSession>}
   *
   * @memberOf SessionService
   */
  public create (session: ConferenceSession): Observable<ConferenceSession> {
    return this.authHttp.post(API_ROUTES.sessions.create, session)
      .map(res => res.json())
      .map(s => ConferenceSession.fromAPI(s));
  }

  /**
   * Retrieves all favorite sessions
   *
   * @http GET
   * @returns {Observable<ConferenceSession[]>}
   *
   * @memberOf SessionService
   */
  public getFavorites (): Observable<ConferenceSession[]> {
    return this.httpService.get(API_ROUTES.sessions.favorites)
      .map(res => res.json())
      .map(list => list.map(ConferenceSession.fromAPI));
  }

}
