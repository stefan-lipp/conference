import * as _ from 'lodash';

import { Paper } from './paper.model';

/**
 * Event model.
 */
export class ConferenceEvent {

  public id: string;
  public title: string;
  public duration: number;   // in minutes
  public type: EventType;
  public favored: boolean;
  public paper?: Paper;
  public startTime?: number;
  public room?: string;
  public speaker?: string;
  public maxSize?: number;

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
