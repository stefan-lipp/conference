import { Injectable } from '@angular/core';
import { Http } from '@angular/http';

import { AuthHttp } from 'angular2-jwt';
import { Observable } from 'rxjs';

import { AuthService } from '../auth';
import { ConferenceEvent } from '../../models';
import { ApiMapperService } from '../api';
import { API_ROUTES } from '../api/routes';

@Injectable()
export class VotingService {

  constructor(
    private apiMapperService: ApiMapperService,
    private authService: AuthService,
    private authHttp: AuthHttp,
    private http: Http,
  ) { }

  /**
   * Gets all events ordered by their number of votes.
   *
   * @returns {Observable} Observable containing the sorted list of events.
   */
  public getEventsOrderedByVotes (): Observable<ConferenceEvent[]> {
    return this.authHttp.get(API_ROUTES.voting.get)
      .map(res => res.json())
      .map(list => {
        console.debug(list);
        return list.map(this.apiMapperService.eventApiToLocal)
      });
  }

  /**
   * Adds a vote for the event with a given identifier.
   *
   * @param {string} eventId The event identifier.
   */
  public voteForEventId (eventId: string): Observable<any> {
    return this.authHttp.post(API_ROUTES.voting.add
      .replace(':eventId', eventId), { });
  }

  /**
   * Removes a vote for the event with a given identifier.
   *
   * @param {string} eventId The event identifier.
   */
  public removeVoteForEventId (eventId: string): Observable<any> {
    return this.authHttp.delete(API_ROUTES.voting.remove
      .replace(':eventId', eventId));
  }

}
