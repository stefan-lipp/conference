import * as moment from 'moment';

import {
  ConferenceEvent,
  ApiConferenceEvent,
  Person,
  ApiPerson,
  Room,
  ApiRoom,
  Track,
  ApiTrack,
} from './';

/**
 * Local session model
 *
 * @export
 * @class ConferenceSession
 */
export class ConferenceSession {

  /**
   * Transforms API session to local session
   *
   * @static
   * @param {ApiConferenceSession} apiRepresentation
   * @returns {ConferenceSession}
   *
   * @memberOf ConferenceSession
   */
  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession(
      apiRepresentation.id,
      apiRepresentation.name,
      (apiRepresentation.events || [ ]).map(ConferenceEvent.fromAPI),
      <Track> apiRepresentation.track,
      Person.fromAPI(apiRepresentation.chair),
      <Room> apiRepresentation.room,
      moment(apiRepresentation.startTime),
      moment(apiRepresentation.endTime),
    );
  }

  /**
   * Creates an instance of ConferenceSession.
   * @param {string} id
   * @param {string} name
   * @param {ConferenceEvent[]} events
   * @param {Track} track
   * @param {Person} chair Session chair
   * @param {Room} room
   * @param {moment.Moment} startTime
   * @param {moment.Moment} endTime
   *
   * @memberOf ConferenceSession
   */
  constructor(
    public id: number,
    public name: string,
    public events: ConferenceEvent[],
    public track: Track,
    public chair: Person,
    public room: Room,
    public startTime: moment.Moment,
    public endTime: moment.Moment
  ) { }
}

/**
 * API session model
 *
 * @export
 * @interface ApiConferenceSession
 */
export interface ApiConferenceSession {
  id: number;
  name: string;
  events: ApiConferenceEvent[];
  track: ApiTrack;

  chair?: ApiPerson;
  room?: ApiRoom;
  startTime?: string;
  endTime?: string;
}
