import { Injectable } from '@angular/core';
import { Http }       from '@angular/http';

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
   * @return A promise with a list of events.
   */
  public findAll(): Promise<Event[]> {
    return Promise.resolve(EVENTS);
  }

  /**
   * Saves a new event or updates an existing one.
   *
   * @param event: The event to save or update.
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

}
