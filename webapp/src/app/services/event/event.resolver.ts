import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';

import { EventService } from '../event';
import { ConferenceEvent } from '../../models';
import { EVENTS } from './mock-events';

@Injectable()
export class EventResolver implements Resolve<ConferenceEvent> {

  constructor (
    private eventService: EventService,
  ) {}

  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ConferenceEvent> {
     return Observable.of(EVENTS[0]); // return this.eventService.getEvent(route.params['eventId']);
  }

}
