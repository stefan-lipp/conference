import * as moment from 'moment';
import * as _ from 'lodash';

import {
  ApiConferenceEvent,
  ConferenceEvent,
} from './conference-event.model';
import { Person } from './person.model';

export class ConferenceSession {
  public id: string;
  public name: string;
  public chair: Person;
  public room: string;
  public events: ConferenceEvent[];

  public startTime: moment.Moment;
  public endTime: moment.Moment;

  public favored: boolean = false;

  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession({
      id: apiRepresentation.id.toString(10),
      name: apiRepresentation.name,
      chair: apiRepresentation.chair,
      room: apiRepresentation.room ? apiRepresentation.room.name : null,
      events: apiRepresentation.events.map(ConferenceEvent.fromAPI),
      startTime: moment(apiRepresentation.startTime),
      endTime: moment(apiRepresentation.endTime),
      favored: apiRepresentation.favored,
    });
  }

  constructor (data: any) {
    _.merge(this, data);
  }

  public get urlEncodedName (): string {
    return this.name.replace(/[^A-Za-z0-9-]/g, ' ').trim().replace(/ /g, '-').toLowerCase();
  }
}

export interface ApiConferenceSession {
  id: number,
  name: string;
  room: { name: string, size: number };
  chair: { id: string, name: string, institution: string, email: string };
  events: ApiConferenceEvent[];
  startTime?: string;
  endTime?: string;
  favored: boolean;
}
