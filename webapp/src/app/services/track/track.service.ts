import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { ApiMapperService } from '../api';
import { Track } from 'app/models';

@Injectable()
export class TrackService {

  /**
   * Constructor for the event service.
   */
  constructor(
    private apiMapperService: ApiMapperService,
    private authHttp: AuthHttp,
  ) { }

  /**
   * Returns all tracks of the conference
   *
   * @return {Observable<Track[]>} An observable containing a list of all events
   */
  public getAll (): Observable<Track[]> {
    return this.authHttp.get(API_ROUTES.tracks.all)
      .map(res => <Track[]> res.json());
  }

  /**
   * Updates a given track
   *
   * @param {Track} track Track to update
   * @returns {Observable<Track>} Track in new state
   */
  public update (track: Track): Observable<Track> {
    return this.authHttp.put(
      API_ROUTES.tracks.update.replace(':trackId', track.id.toString(10)),
      track
    )
      .map(res => <Track> res.json());
  }

  public create (track: Track): Observable<Track> {
    return this.authHttp.post(API_ROUTES.tracks.create, track)
      .map(res => <Track> res.json());
  }

  public delete (track: Track): Observable<any> {
    return this.authHttp
      .delete(API_ROUTES.tracks.delete.replace(':trackId', track.id.toString(10)));
  }

  /**
   * Performs a scheduling
   *
   *
   * @returns {Observable<Track>} Track in new state
   */
  public schedule (): Observable<any> {
    return this.authHttp.post(API_ROUTES.schedule.all, { })
      .map(res => res.json());
  }
}
