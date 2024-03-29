import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api-routes';
import { AuthService } from '../auth';
import {
  ConferenceEvent,
  Comment,
} from '../../models';

/**
 * API service for all things Event related
 *
 * @export
 * @class EventService
 */
@Injectable()
export class EventService {

  constructor(
    private authService: AuthService,
    private authHttp: AuthHttp,
    private http: Http,
  ) { }

  /**
   * HTTP service to use
   *
   * @readonly
   * @private
   * @type {(Http | AuthHttp)}
   * @memberOf EventService
   */
  private get httpService (): Http | AuthHttp {
    if (this.authService.loggedIn) {
      return this.authHttp;
    } else {
      return this.http;
    }
  }

  /**
   * Retrieves all events of the conference from the API
   *
   * @http GET
   * @return {Observable<Event[]>} An observable containing a list of all events
   *
   * @memberOf EventService
   */
  public getAll (): Observable<ConferenceEvent[]> {
    return this.httpService.get(API_ROUTES.events.all)
      .map(res => res.json())
      .map(list => list.map(ConferenceEvent.fromAPI));
  }

  /**
   * Retrieves all favored events from the API
   *
   * @http GET
   * @returns {Observable<ConferenceEvent[]>}
   *
   * @memberOf EventService
   */
  public getFavorites (): Observable<ConferenceEvent[]> {
    return this.httpService.get(API_ROUTES.events.favorites)
      .map(res => res.json())
      .map(list => list.map(ConferenceEvent.fromAPI));
  }

  /**
   * Retrieves a single event from the API
   *
   * @http GET
   * @param {number} eventId
   * @returns {Observable<ConferenceEvent>}
   *
   * @memberOf EventService
   */
  public getEvent (eventId: number): Observable<ConferenceEvent> {
    return this.httpService.get(API_ROUTES.events.single.replace(':eventId', eventId.toString(10)))
      .map(res => res.json())
      .map(ConferenceEvent.fromAPI);
  }

  /**
   * Retrieves all events of a given speaker from the API
   *
   * @http GET
   * @param {string} personId
   * @returns {Observable<ConferenceEvent>}
   *
   * @memberOf EventService
   */
  public getEventOfSpeaker (personId: string): Observable<ConferenceEvent> {
    return this.httpService.get(API_ROUTES.events.ofSpeaker.replace(':personId', personId))
      .map(res => res.json())
      .map(list => list.map(ConferenceEvent.fromAPI));
  }

  /**
   * Updates the favour status of an event.
   *
   * @http POST, DELETE
   * @param {ConferenceEvent} event The event whose favour status to update.
   * @return {Observable<any>} Observable return by the API call
   *
   * @memberOf EventService
   */
  public updateFavourStatus(event: ConferenceEvent): Observable<any> {
    if (event.favored) {
      return this.authHttp.post(
        API_ROUTES.events.favorite.replace(':eventid', event.id.toString(10)),
        { },
      );
    } else {
      return this.authHttp.delete(
        API_ROUTES.events.favorite.replace(':eventid', event.id.toString(10)));
     }
  }

  /**
   * Retrieves comments for a single event.
   *
   * @http GET
   * @param {number} eventId Id of the event the comment is connected to
   * @return {Observable<Comment[]>} Observable of the retrieved comments
   *
   * @memberOf EventService
   */
  public getComments (eventId: number): Observable<Comment[]> {
    return this.httpService.get(
      API_ROUTES.events.comments.replace(':eventId', eventId.toString(10))
    )
      .map(res => res.json())
      .map(cs => cs.map(Comment.fromAPI));
  }

  /**
   * Posts new comment for an event.
   *
   * @http POST
   * @param {number} eventId Id of the event
   * @param {string} comment the actual comments messsage
   * @return {Observable<any>} Observable of the API response
   *
   * @memberOf EventService
   */
  public addComment (eventId: number, comment: string ): Observable<any> {
    return this.httpService.post(
      API_ROUTES.events.comments.replace(':eventId', eventId.toString(10)),
      { comment: comment },
    );
  }

  /**
   * Posts uploaded file for an event.
   *
   * @http POST
   * @param {number} eventId Id of the event
   * @param {File} file the file to be uploaded
   * @return {Observable<any>} Observable of the API response
   *
   * @memberOf EventService
   */
  public uploadFile (eventId: number, file: File ): Observable<any> {
    const formData: FormData = new FormData();
    formData.append('uploadFile', file);

    return this.httpService.post(API_ROUTES.events.upload
      .replace(':eventId', eventId.toString(10)), formData)
      .map(res => res.json())
      .catch(error => Observable.throw(error));
  }
}
