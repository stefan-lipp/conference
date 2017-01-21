import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { ApiMapperService } from '../api';
import { AuthService } from '../auth';
import { ConferenceEvent } from '../../models';

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

  /**
   * Updates the favour status of an event.
   *
   * @param {ConferenceEvent} event The event whose favour status to update.
   * @return void
   */
  public updateFavourStatus(event: ConferenceEvent): void {
    if (event.favored) {
      this.authHttp.post(API_ROUTES.events.favorite.replace(':eventId', event.id), { })
        .subscribe(_ => null);
    } else {
      this.authHttp.delete(API_ROUTES.events.favorite.replace(':eventId', event.id))
        .subscribe(_ => null);
    }
  }
}
