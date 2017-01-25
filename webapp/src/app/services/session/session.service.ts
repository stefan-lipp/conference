import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { ApiMapperService } from '../api';
import { AuthService } from '../auth';
import { ConferenceSession } from 'app/models';

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
   * @returns {Observable<ConferenceSession[]>} An observable containing a list of all sessions
   */
  public getAll (): Observable<ConferenceSession[]> {
    return this.httpService.get(API_ROUTES.sessions.all)
      .map(res => res.json())
      .map(list => list.map(this.apiMapperService.sessionApiToLocal));
  }

  /**
   * Get a data of a single session
   *
   * @param {string} sessionId Id of requested session
   * @returns {Observable<ConferenceSession>} Single session
   */
  public getSession (sessionId: string): Observable<ConferenceSession> {
    return this.httpService.get(API_ROUTES.sessions.single.replace(':sessionId', sessionId))
      .map(res => res.json())
      .map(this.apiMapperService.sessionApiToLocal);
  }

  /**
   * Returns all favored sessions of the conference
   *
   * @returns {Observable<ConferenceSession[]>} An observable list of all favorite sessions
   */
  public getFavorites (): Observable<ConferenceSession[]> {
    return this.httpService.get(API_ROUTES.sessions.favorites.get)
      .map(res => res.json())
      .map(list => list.map(this.apiMapperService.sessionApiToLocal));
  }

  /**
   * Updates the favor status of a given session
   *
   * @param {ConferenceSession} session Session to update
   * @returns {Observable<any>}
   */
  public updateFavorStatus (session: ConferenceSession): Observable<any> {
    if (session.favored) {
      return this.authHttp
        .post(API_ROUTES.sessions.favorites.update.replace(':sessionId', session.id), { });
    } else {
      return this.authHttp.delete(
        API_ROUTES.sessions.favorites.update.replace(':sessionId', session.id)
      );
    }
  }

}
