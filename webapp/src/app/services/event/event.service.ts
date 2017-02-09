import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { ApiMapperService } from '../api';
import { AuthService } from '../auth';
import {
  ConferenceEvent,
  Comment,
} from '../../models';

@Injectable()
export class EventService {

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
   * Returns all events of the conference
   *
   * @return {Observable<Event[]>} An observable containing a list of all events
   */
  public getAll (): Observable<ConferenceEvent[]> {
    return this.httpService.get(API_ROUTES.events.all)
      .map(res => res.json())
      .map(list => list.map(this.apiMapperService.eventApiToLocal));
  }

  public getFavorites (): Observable<ConferenceEvent[]> {
    return this.httpService.get(API_ROUTES.events.favorites)
      .map(res => res.json())
      .map(list => list.map(this.apiMapperService.eventApiToLocal));
  }

  public getEvent (eventId: number): Observable<ConferenceEvent> {
    return this.httpService.get(API_ROUTES.events.single.replace(':eventId', eventId.toString(10)))
      .map(res => res.json())
      .map(this.apiMapperService.eventApiToLocal);
  }

  public getEventOfSpeaker (personId: string): Observable<ConferenceEvent> {
    return this.httpService.get(API_ROUTES.events.ofSpeaker.replace(':personId', personId))
      .map(res => res.json())
      .map(list => list.map(this.apiMapperService.eventApiToLocal));
  }

  /**
   * Updates the favour status of an event.
   *
   * @param {ConferenceEvent} event The event whose favour status to update.
   * @return void
   */
  public updateFavourStatus(event: ConferenceEvent): void {
    if (event.favored) {
      this.authHttp.post(API_ROUTES.events.favorite.replace(':eventid', event.id), { })
        .subscribe(_ => null);
    } else {
      this.authHttp.delete(API_ROUTES.events.favorite.replace(':eventid', event.id))
        .subscribe(_ => null);
    }
  }

 /** retrieves comments for a single event
  *   TODO update doc and code
  * @return { Observable<Comment []> }
  */
  public getComments (eventId: string): Observable<Comment[]> {
    /* return this.httpService.get(API_ROUTES.events.comments
      .replace(':eventId', eventId))
      .map(res => res.json()); */

      const mockedComments: Comment[] = [
        {  timestamp: 'Wed Feb 08 2017 14:06:30 GMT+0100',
           name: 'Michael Schreier',
           content: 'I do not understand this',
        },
        {  timestamp: 'Wed Feb 08 2017 14:28:30 GMT+0100',
           name: 'Stefan Cimander',
           content: 'Have you tried hyper?',
        },
      ];
      return Observable.of(mockedComments);
  }
 /** posts comment for an event
  * @param {string} eventId of the event 
  * @param {string} user name of the commenting user
  * @param {string} content the actual comment
  *
  * @return {Observable<string>} the comments timestamp as string
  */
  public addComment (eventId: string, user: string, content: string ): Observable<string> {
    /* return this.httpService.put(API_ROUTES.events.comments
      .replace(':eventId', eventId), {
        name = user,
        comment = content,
      })
      .map(res => res.json()); */

      return Observable.of('Wed Feb 08 2017 14:06:30 GMT+0100');
  }
}



