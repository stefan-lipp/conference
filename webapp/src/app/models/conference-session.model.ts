import * as moment from 'moment';
import * as _ from 'lodash';

import {
  ApiConferenceEvent,
  ConferenceEvent,
} from './conference-event.model';
import { Person } from './person.model';

export class ConferenceSession {

  public title: string;
  public chair: Person;
  public room: string;
  public events: ConferenceEvent[];

  public startTime: moment.Moment;
  public endTime: moment.Moment;

  public favored: boolean = false;

  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession({
      title: apiRepresentation.title,
      chair: apiRepresentation.chair,
      room: apiRepresentation.room.name,
      events: apiRepresentation.events.map(ConferenceEvent.fromAPI),
      startTime: moment(apiRepresentation.startTime),
      endTime: moment(apiRepresentation.endTime),
      favored: apiRepresentation.favored,
    });
  }

  constructor (data: any) {
    _.merge(this, data);
  }
}

export interface ApiConferenceSession {
  title: string;
  room: { name: string, size: number };
  chair: { id: string, name: string, institution: string, email: string };
  events: ApiConferenceEvent[];
  startTime?: string;
  endTime?: string;
  favored: boolean;
}