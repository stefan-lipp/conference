/**
 * Event model.
 */
export interface Event {
  id: string;
  title: string;
  duration: number;   // in minutes
  type: EventType;
  favoured: boolean;
}

/**
 * Event type enumeration.
 */
export enum EventType {
  ResearchTalk,
  IndustryTalk,
  Tutorial,
  Demo,
  Workshop
}
