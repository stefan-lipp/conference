import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';

import { EventService } from '../event';
import { ConferenceEvent } from '../../models';

/**
 * @export
 * @class EventResolver
 * @implements {Resolve<ConferenceEvent>}
 */
@Injectable()
export class EventResolver implements Resolve<ConferenceEvent> {

  constructor (
    private eventService: EventService,
  ) { }

  /**
   * @param {ActivatedRouteSnapshot} route
   * @param {RouterStateSnapshot} state
   * @returns {Observable<ConferenceEvent>}
   *
   * @memberOf Resolve
   */
  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ConferenceEvent> {
     return this.eventService.getEvent(route.params['eventId']);
  }

}


/**
 * @export
 * @class EventOfSpeakerResolver
 * @implements {Resolve<ConferenceEvent>}
 */
@Injectable()
export class EventOfSpeakerResolver implements Resolve<ConferenceEvent> {

  constructor (
    private eventService: EventService,
  ) { }

  /**
   * @param {ActivatedRouteSnapshot} route
   * @param {RouterStateSnapshot} state
   * @returns {Observable<ConferenceEvent>}
   *
   * @memberOf Resolve
   */
  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<ConferenceEvent> {
     return this.eventService.getEventOfSpeaker(route.params['personId']);
  }

}
