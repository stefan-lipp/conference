import { Injectable } from '@angular/core';
import { Http }       from '@angular/http';

import { Observable } from 'rxjs';

import { Event }      from '../../models/event.model';
import { EVENTS }     from './mock-events';

@Injectable()
export class EventService {

  /**
   * Constructor for the event service.
   */
  constructor(private http: Http) { }

  /**
   * Finds all events of the conference.
   *
   * @return An observable list of events.
   */
  public findAll(): Observable<Event[]> {
    return Observable.of(EVENTS);
  }

  /**
   * Saves a new event or updates an existing one.
   *
   * @param {Event}: The event to save or update.
   * @return void
   */
  public save(event: Event): void {
    let existingEvent = EVENTS.find(elem => elem.id === event.id);
    if (existingEvent === undefined) {
      EVENTS.push(event);
    } else {
      let existingIndex = EVENTS.indexOf(existingEvent);
      EVENTS[existingIndex] = event;
    }
  }

  /**
   * Updates the favour status of an event.
   *
   * @param {Event} The event whose favour status to update.
   * @return void
   */
  public updateFavourStatus(event: Event): void {
    /*
      TODO: Inform backend about updated favour status of event.

      Send authHttp request to an api url like 'api/events/{event.id}/favourite' with a
      request body containing true or false depending on 'event.favoured'
    */
  }

}
