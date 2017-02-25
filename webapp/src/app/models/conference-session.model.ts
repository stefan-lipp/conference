import * as moment from 'moment';

import {
  ConferenceEvent,
  ApiConferenceEvent,
} from './conference-event.model';

import {
  Track,
  ApiTrack,
} from './track.model';


export class ConferenceSession {
  public id: string;
  public name: string;
  public events: ConferenceEvent[ ];
  public track: Track;

  public startTime: moment.Moment;
  public endTime: moment.Moment;

  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession(
      apiRepresentation.id.toString(10),
      apiRepresentation.name,
      (apiRepresentation.events || [ ]).map(apiEvent => ConferenceEvent.fromAPI(apiEvent)),
      Track.fromApi(apiRepresentation.track),
      moment(apiRepresentation.startTime),
      moment(apiRepresentation.endTime)
    );
  }

  constructor(id: string, name: string, events: ConferenceEvent[ ], track: Track,
              startTime: moment.Moment, endTime: moment.Moment) {
    this.id = id;
    this.name = name;
    this.track = track;
    this.events = events;
    this.startTime = startTime;
    this.endTime = endTime;
  }

  public getRoomInformation(): string {
    let eventRooms: string[] = [ ];
    for (const event of this.events) {
      if (eventRooms.indexOf(event.room) < 0) {
        eventRooms.push(event.room);
      }
    }
    return eventRooms.join(', ');
  }

}

export interface ApiConferenceSession {
  id: number;
  name: string;
  events: ApiConferenceEvent[ ];
  track: ApiTrack;

  startTime?: string;
  endTime?: string;
}
