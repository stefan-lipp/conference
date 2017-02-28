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

  public roomName: string;
  public startTime: moment.Moment;
  public endTime: moment.Moment;

  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession(
      apiRepresentation.id.toString(10),
      apiRepresentation.name,
      (apiRepresentation.events || [ ]).map(apiEvent => ConferenceEvent.fromAPI(apiEvent)),
      Track.fromApi(apiRepresentation.track),
      apiRepresentation.roomName,
      moment(apiRepresentation.startTime),
      moment(apiRepresentation.endTime)
    );
  }

  constructor(id: string, name: string, events: ConferenceEvent[ ], track: Track,
              roomName: string, startTime: moment.Moment, endTime: moment.Moment) {
    this.id = id;
    this.name = name;
    this.track = track;
    this.events = events;
    this.roomName = roomName;
    this.startTime = startTime;
    this.endTime = endTime;
  }
}

export interface ApiConferenceSession {
  id: number;
  name: string;
  events: ApiConferenceEvent[ ];
  track: ApiTrack;

  roomName?: string;
  startTime?: string;
  endTime?: string;
}
