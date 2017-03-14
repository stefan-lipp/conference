import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api-routes';
import { Track } from 'app/models';

/**
 * API service for all things track related.
 * Admin-only
 *
 * @export
 * @class TrackService
 */
@Injectable()
export class TrackService {

  /**
   * Constructor for the event service.
   */
  constructor(
    private authHttp: AuthHttp,
  ) { }

  /**
   * Returns all tracks of the conference
   *
   * @http GET
   * @return {Observable<Track[]>} An observable containing a list of all events
   *
   * @memberOf TrackService
   */
  public getAll (): Observable<Track[]> {
    return this.authHttp.get(API_ROUTES.tracks.all)
      .map(res => <Track[]> res.json());
  }

  /**
   * Updates a given track
   *
   * @http PUT
   * @param {Track} track Track to update
   * @returns {Observable<Track>} Track in new state
   *
   * @memberOf TrackService
   */
  public update (track: Track): Observable<Track> {
    return this.authHttp.put(
      API_ROUTES.tracks.update.replace(':trackId', track.id.toString(10)),
      track
    )
      .map(res => <Track> res.json());
  }

  /**
   * Create a new track via APi call
   *
   * @http POST
   * @param {Track} track
   * @returns {Observable<Track>}
   *
   * @memberOf TrackService
   */
  public create (track: Track): Observable<Track> {
    return this.authHttp.post(API_ROUTES.tracks.create, track)
      .map(res => <Track> res.json());
  }

  /**
   * Delete a track
   *
   * @http DELETE
   * @param {Track} track
   * @returns {Observable<any>}
   *
   * @memberOf TrackService
   */
  public delete (track: Track): Observable<any> {
    return this.authHttp
      .delete(API_ROUTES.tracks.delete.replace(':trackId', track.id.toString(10)));
  }

  /**
   * Performs a scheduling
   *
   * @http POST
   * @returns {Observable<Track>} Track in new state
   *
   * @memberOf TrackService
   */
  public schedule (): Observable<any> {
    return this.authHttp.post(API_ROUTES.schedule.all, { })
      .map(res => res.json());
  }
}
