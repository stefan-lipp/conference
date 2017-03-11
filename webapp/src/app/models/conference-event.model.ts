import * as moment from 'moment';
import * as _ from 'lodash';

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
 * Event model.
 */
export class ConferenceEvent {

  public id: string;
  public title: string;
  public duration: number; // in minutes
  public type: EventType;
  public favored: boolean;
  public voted: boolean = false;
  public speakers: Person[];
  public paper?: Paper;
  public startTime?: moment.Moment;
  public endTime?: moment.Moment;
  public room?: Room;
  public maxSize?: number;

  public static fromAPI (apiRepresentation: ApiConferenceEvent): ConferenceEvent {
    if (apiRepresentation.paper) {
      if (apiRepresentation.paper.abstract){
        const input: string = apiRepresentation.paper.abstract;
        let front: string = input.slice(0, 9);
        const rest: string = input.slice(9);
        apiRepresentation.paper.abstract = front.replace('Abstract:', '') + rest;
      }
    }

    return new ConferenceEvent({
      id: apiRepresentation.id,
      title: apiRepresentation.title,
      duration: apiRepresentation.duration,
      favored: apiRepresentation.favored,
      speakers: apiRepresentation.speakers.map(Person.fromAPI),
      paper: apiRepresentation.paper ? Paper.fromAPI(apiRepresentation.paper) : null,
      startTime: moment(apiRepresentation.startTime),
      endTime: moment(apiRepresentation.endTime),
      type: EventType[apiRepresentation.kind],
      room: apiRepresentation.room ? Room.fromAPI(apiRepresentation.room) : null,
      maxSize: apiRepresentation.maxSize,
    });
  }

  constructor (data: any) {
    _.merge(this, data);
  }

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

}

/**
 * Event type enumeration.
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

// TODO check with actual API
export interface ApiConferenceEvent {
  id: number;
  title: string;
  paper: ApiPaper;
  favored: boolean;
  speakers: ApiPerson[];
  room?: ApiRoom;
  startTime?: string;
  endTime?: string;
  duration: string;
  maxSize?: string;
  kind?: string;
}
