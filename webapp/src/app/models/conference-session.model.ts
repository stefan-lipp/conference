import * as moment from 'moment';

import {
  ConferenceEvent,
  ApiConferenceEvent,
} from './conference-event.model';


export class ConferenceSession {
  public id: string;
  public name: string;
  public events: ConferenceEvent[];

  public startTime: moment.Moment;
  public endTime: moment.Moment;

  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession(
      apiRepresentation.id.toString(10),
      apiRepresentation.name,
      apiRepresentation.events.map(apiEvent => ConferenceEvent.fromAPI(apiEvent)),
      moment(apiRepresentation.startTime),
      moment(apiRepresentation.endTime)
    );
  }

  constructor(id: string, name: string, events: ConferenceEvent[],
              startTime: moment.Moment, endTime: moment.Moment) {
    this.id = id;
    this.name = name;
    this.events = events;
    this.startTime = startTime;
    this.endTime = endTime;
  }

}

export interface ApiConferenceSession {
  id: number;
  name: string;
  events: ApiConferenceEvent[];

  startTime?: string;
  endTime?: string;
}
