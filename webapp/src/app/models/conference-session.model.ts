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
 * Conference session model
 */
export class ConferenceSession {

  public id: string;
  public name: string;
  public events: ConferenceEvent[ ];
  public track: Track;

  public chair: Person;
  public room: Room;
  public startTime: moment.Moment;
  public endTime: moment.Moment;

  public static fromAPI (apiRepresentation: ApiConferenceSession): ConferenceSession {
    return new ConferenceSession(
      apiRepresentation.id.toString(10),
      apiRepresentation.name,
      (apiRepresentation.events || [ ]).map(apiEvent => ConferenceEvent.fromAPI(apiEvent)),
      Track.fromApi(apiRepresentation.track),
      apiRepresentation.chair ? Person.fromAPI(apiRepresentation.chair) : null,
      apiRepresentation.room ? Room.fromAPI(apiRepresentation.room) : null,
      moment(apiRepresentation.startTime),
      moment(apiRepresentation.endTime),
    );
  }

  constructor(id: string, name: string, events: ConferenceEvent[ ], track: Track,
              chair: Person, room: Room, startTime: moment.Moment, endTime: moment.Moment) {
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

  chair?: ApiPerson;
  room?: ApiRoom;
  startTime?: string;
  endTime?: string;
}
