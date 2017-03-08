import * as moment from 'moment';

import {
  ConferenceEvent,
  ApiConferenceEvent,
} from './conference-event.model';

import {
  Track,
  ApiTrack,
} from './track.model';

import { Room } from './room.model';


export class ConferenceSession {
  public id: string;
  public name: string;
  public events: ConferenceEvent[ ];
  public track: Track;

  public room: Room;
  public startTime: moment.Moment;
  public endTime: moment.Moment;

  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession(
      apiRepresentation.id.toString(10),
      apiRepresentation.name,
      (apiRepresentation.events || [ ]).map(apiEvent => ConferenceEvent.fromAPI(apiEvent)),
      Track.fromApi(apiRepresentation.track),
      // TODO update when backend delieveres real Rooms
      Room.fromAPI({
        id: 2,
        name: apiRepresentation.roomName,
        map:  apiRepresentation.roomName ?
          apiRepresentation.roomName.replace(' ', '').toLowerCase() : 'pearl1',
      }),
      moment(apiRepresentation.startTime),
      moment(apiRepresentation.endTime),
    );
  }

  constructor(id: string, name: string, events: ConferenceEvent[ ], track: Track,
              room: Room, startTime: moment.Moment, endTime: moment.Moment) {
    this.id = id;
    this.name = name;
    this.track = track;
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

  roomName?: string;
  startTime?: string;
  endTime?: string;
}
