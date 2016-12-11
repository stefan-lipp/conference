import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { AuthService } from '../auth';
import { Event } from '../../models';

@Injectable()
export class EventService {

  /**
   * Constructor for the event service.
   */
  constructor(
    private authService: AuthService,
    private authHttp: AuthHttp,
    private http: Http,
  ) { }

  /**
   * Returns all events of the conference
   *
   * @return {Observable<Event[]>} An observable containing a list of all events
   */
  public getAll(): Observable<Event[]> {
    if (this.authService.loggedIn) {
      return this.authHttp.get(API_ROUTES.events.all)
        .map(res => res.json());
    } else {
      return this.http.get(API_ROUTES.events.all)
        .map(res => res.json());
    }
  }

  public getEvent (eventId: number): Observable<Event> {
    if (this.authService.loggedIn) {
      return this.authHttp.get(API_ROUTES.events.single.replace(':eventId', eventId.toString(10)))
        .map(res => res.json());
    } else {
      return this.http.get(API_ROUTES.events.single.replace(':eventId', eventId.toString(10)))
        .map(res => res.json());
    }
  }

  /**
   * Saves a new event or updates an existing one.
   *
   * @param {Event}: The event to save or update.
   * @return void
   */
  public save(event: Event): void {
    /*
    let existingEvent = EVENTS.find(elem => elem.id === event.id);
    if (existingEvent === undefined) {
      EVENTS.push(event);
    } else {
      let existingIndex = EVENTS.indexOf(existingEvent);
      EVENTS[existingIndex] = event;
    }
    */
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
