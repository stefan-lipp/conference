import * as moment from 'moment';

import {
  Paper,
  ApiPaper,
} from './paper.model';
import {
  Person,
  ApiPerson,
} from './person.model';
import {
  Room,
  ApiRoom,
 } from './room.model';

/**
 * Local event model
 *
 * @export
 * @class ConferenceEvent
 */
export class ConferenceEvent {

  /**
   * Transforms API-representation of an Event to ConferenceEvent
   *
   * @static
   * @param {ApiConferenceEvent} apiRepresentation
   * @returns {ConferenceEvent}
   *
   * @memberOf ConferenceEvent
   */
  public static fromAPI (apiRepresentation: ApiConferenceEvent): ConferenceEvent {
    if (!apiRepresentation) {
      return null;
    }

    if (apiRepresentation.paper && apiRepresentation.paper.abstract) {
      apiRepresentation.paper.abstract = apiRepresentation.paper.abstract
        .replace(/^abstract: ?/i, '');
    }

    return new ConferenceEvent(
      apiRepresentation.id,
      apiRepresentation.title,
      EventType[apiRepresentation.kind],
      moment(apiRepresentation.startTime),
      moment(apiRepresentation.endTime),
      apiRepresentation.duration,
      apiRepresentation.maxSize,
      (apiRepresentation.speakers || [ ]).map(Person.fromAPI),
      Paper.fromAPI(apiRepresentation.paper),
      <Room> apiRepresentation.room,
      apiRepresentation.favored,
      apiRepresentation.voted,
      apiRepresentation.votecount,
    );
  }

  /**
   * Creates an instance of ConferenceEvent.
   *
   * @param {number} id
   * @param {string} title
   * @param {EventType} type
   * @param {moment.Moment} startTime
   * @param {moment.Moment} endTime
   * @param {string} duration
   * @param {number} maxSize
   * @param {Person[]} speakers
   * @param {Paper} paper
   * @param {Room} room
   * @param {boolean} favored
   * @param {boolean} voted
   * @param {number} voteCount
   *
   * @memberOf ConferenceEvent
   */
  constructor (
    public id: number,
    public title: string,
    public type: EventType,
    public startTime: moment.Moment,
    public endTime: moment.Moment,
    public duration: string,
    public maxSize: number,
    public speakers: Person[],
    public paper: Paper,
    public room: Room,
    public favored: boolean,
    public voted: boolean,
    public voteCount: number,
  ) { }

  /**
   * String representation of the events type
   *
   * @readonly
   * @type {string}
   * @memberOf ConferenceEvent
   */
  public get eventType (): string {
    switch (this.type) {
      case EventType.Keynote: return 'Keynote';
      case EventType.Research: return 'Research Talk';
      case EventType.Industry: return 'Industry Talk';
      case EventType.Tutorial: return 'Tutorial';
      case EventType.Demo: return 'Demo';
      case EventType.Workshop: return 'Workshop';
      case EventType.Entertainment: return 'Entertainment';
      default: return 'General Event';
    }
  }

  /**
   * Title in a format suitable for URLs
   *
   * @readonly
   * @type {string}
   * @memberOf ConferenceEvent
   */
  public get urlEncodedTitle (): string {
    return this.title
      .replace(/[^A-Za-z0-9]/g, ' ')
      .trim()
      .replace(/ +/g, '-')
      .substr(0, 64)
      .toLowerCase()
      .replace(/-[^-]*$/, '');
  }

}

/**
 * Event types
 *
 * @export
 * @enum {number}
 */
export enum EventType {
  Research,
  Industry,
  Tutorial,
  Demo,
  Workshop,
  Keynote,
  Entertainment,
}

/**
 * API event model
 *
 * @export
 * @interface ApiConferenceEvent
 */
export interface ApiConferenceEvent {
  id: number;
  title: string;
  paper: ApiPaper;
  favored: boolean;
  voted: boolean;
  speakers: ApiPerson[];
  room?: ApiRoom;
  votecount?: number;
  startTime?: string;
  endTime?: string;
  duration: string;
  maxSize?: number;
  kind?: string;
}
