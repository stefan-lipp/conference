import * as moment from 'moment';
import * as _ from 'lodash';

import {
  Paper,
  ApiPaper,
} from './paper.model';

/**
 * Event model.
 */
export class ConferenceEvent {

  public id: string;
  public title: string;
  public duration: number; // in minutes
  public type: EventType;
  public favored: boolean;
  public paper?: Paper;
  public room?: string;
  public speaker?: string;
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
      paper: Paper.fromAPI(apiRepresentation.paper),
      type: EventType[apiRepresentation.kind],
      room: apiRepresentation.roomName,
      speaker: 'N.N.', // TODO
      maxSize: apiRepresentation.maxSize,
    });
  }


  constructor (data: any) {
    _.merge(this, data);
  }

  public get eventType (): string {
    switch (this.type) {
      case EventType.Research: return 'Research Talk';
      case EventType.Industry: return 'Industry Talk';
      case EventType.Tutorial: return 'Tutorial';
      case EventType.Demo: return 'Demo';
      case EventType.Workshop: return 'Workshop';
      case EventType.Entertainment: return 'Entertainment';
      default: return 'General Event';
    }
  }

  public get urlEncodedTitle (): string {
    return this.title.replace(/[^A-Za-z0-9-]/g, ' ').trim().replace(/ /g, '-');
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
  Entertainment
}

// TODO check with actual API
export interface ApiConferenceEvent {
  id: number;
  title: string;
  paper: ApiPaper;
  roomName?: string;
  duration: string;
  maxSize?: string;
  kind?: string;
  favored: boolean;
}
