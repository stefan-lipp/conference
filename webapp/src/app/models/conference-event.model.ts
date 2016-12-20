import * as moment from 'moment';
import * as _ from 'lodash';

import { Paper } from './paper.model';

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
  public startTime?: moment.Moment;
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
      type: -1, // TODO
      favored: apiRepresentation.favored,
      paper: apiRepresentation.paper,
      startTime: moment(apiRepresentation.startTime),
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
      case EventType.ResearchTalk: return 'Research Talk';
      case EventType.IndustryTalk: return 'Industry Talk';
      case EventType.Tutorial: return 'Tutorial';
      case EventType.Demo: return 'Demo';
      case EventType.Workshop: return 'Workshop';
      default: return 'General Event';
    }
  }

}

/**
 * Event type enumeration.
 */
export enum EventType {
  ResearchTalk,
  IndustryTalk,
  Tutorial,
  Demo,
  Workshop,
}

// TODO check with actual API
export interface ApiConferenceEvent {
  id: number;
  title: string;
  paper?: any;
  roomName?: string;
  startTime?: string;
  duration: string;
  maxSize?: string;
  kind?: string;
  favored: boolean;
}
