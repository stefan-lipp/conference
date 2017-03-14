import { Injectable } from '@angular/core';
import { Http } from '@angular/http';

import { AuthHttp } from 'angular2-jwt';
import { Observable } from 'rxjs';

import { AuthService } from '../auth';
import { ConferenceEvent } from '../../models';
import { API_ROUTES } from '../api-routes';

/**
 * API service for all things voting related
 *
 * @export
 * @class VotingService
 */
@Injectable()
export class VotingService {

  constructor(
    private authHttp: AuthHttp,
  ) { }

  /**
   * Gets all events ordered by their number of votes.
   *
   * @http GET
   * @returns {Observable} Observable containing the sorted list of events.
   *
   * @memberOf VotingService
   */
  public getEventsOrderedByVotes (): Observable<ConferenceEvent[]> {
    return this.authHttp.get(API_ROUTES.voting.get)
      .map(res => res.json())
      .map(list => list.map(ConferenceEvent.fromAPI));
  }

  /**
   * Adds a vote for the event with a given identifier.
   *
   * @http POST
   * @param {string} eventId The event identifier.
   *
   * @memberOf VotingService
   */
  public voteForEventId (eventId: number): Observable<any> {
    return this.authHttp.post(API_ROUTES.voting.add
      .replace(':eventId', eventId.toString(10)), { });
  }

  /**
   * Removes a vote for the event with a given identifier.
   *
   * @http DELETE
   * @param {number} eventId The event identifier.
   *
   * @memberOf VotingService
   */
  public removeVoteForEventId (eventId: number): Observable<any> {
    return this.authHttp.delete(API_ROUTES.voting.remove
      .replace(':eventId', eventId.toString(10)));
  }

}
