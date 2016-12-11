import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';

import { EventService } from '../event';
import { Event } from '../../models';
import { EVENTS } from './mock-events';

@Injectable()
export class EventResolver implements Resolve<Event> {

  constructor (
    private eventService: EventService,
  ) {}

  public resolve (route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<Event> {
    return Observable.of(EVENTS[0]); // this.eventService.getEvent(route.params['eventId']);
  }

}
