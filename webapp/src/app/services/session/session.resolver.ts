import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';

import { Observable } from 'rxjs';

import { SessionService } from '../session';
import { ConferenceSession } from '../../models';

/**
 * @export
 * @class SessionResolver
 * @implements {Resolve<ConferenceSession>}
 */
@Injectable()
export class SessionResolver implements Resolve<ConferenceSession> {

  constructor (
    private sessionService: SessionService,
  ) { }

  /**
   * Resolves the activated route into a session sevice request.
   *
   * @param {ActivatedRouteSnapshot} route The activated route to resolve.
   * @param {RouterStateSnapshot} state A state snapshot of the current route.
   * @return {Observable<ConferenceSession>} Observable containing a conference session.
   *
   * @memberOf Resolve
   */
  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ): Observable<ConferenceSession> {
    return this.sessionService.getSession(route.params['sessionId']);
  }

}
