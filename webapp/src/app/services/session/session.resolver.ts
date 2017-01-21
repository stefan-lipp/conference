import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';

import { SessionService } from './session.service';
import { ConferenceSession } from '../../models';

@Injectable()
export class SessionResolver implements Resolve<ConferenceSession> {

  constructor (
    private sessionService: SessionService,
  ) {}

  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ConferenceSession> {
     return this.sessionService.getSession(route.params['sessionId']);
  }

}
