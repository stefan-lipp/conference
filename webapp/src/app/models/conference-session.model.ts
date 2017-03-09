import * as moment from 'moment';

import {
  Chair,
  ApiChair,
  ConferenceEvent,
  ApiConferenceEvent,
  Track,
  ApiTrack,
  Room,
  ApiRoom,
} from './'

export class ConferenceSession {
  public id: string;
  public name: string;
  public events: ConferenceEvent[ ];
  public track: Track;

  public chair: Chair;
  public room: Room;
  public startTime: moment.Moment;
  public endTime: moment.Moment;

  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession(
      apiRepresentation.id.toString(10),
      apiRepresentation.name,
      (apiRepresentation.events || [ ]).map(apiEvent => ConferenceEvent.fromAPI(apiEvent)),
      Track.fromApi(apiRepresentation.track),
      apiRepresentation.chair ? Chair.fromAPI(apiRepresentation.chair) : null,
      apiRepresentation.room ? Room.fromAPI(apiRepresentation.room) : null,
      moment(apiRepresentation.startTime),
      moment(apiRepresentation.endTime),
    );
  }

  constructor(id: string, name: string, events: ConferenceEvent[ ], track: Track,
              chair: Chair, room: Room, startTime: moment.Moment, endTime: moment.Moment) {
    this.id = id;
    this.name = name;
    this.track = track;
    this.chair = chair;
    this.events = events;
    this.room = room;
    this.startTime = startTime;
    this.endTime = endTime;
  }
}

export interface ApiConferenceSession {
  id: number;
  name: string;
  events: ApiConferenceEvent[ ];
  track: ApiTrack;

  chair?: ApiChair;
  room?: ApiRoom;
  startTime?: string;
  endTime?: string;
}
