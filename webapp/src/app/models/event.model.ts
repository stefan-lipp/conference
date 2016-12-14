
/**
 * Event model.
 */
export interface Event {
  id: string;
  title: string;
  duration: number;   // in minutes
  type: EventType;
  favoured: boolean;
  paper?: Paper;
  starttime?: number;
  
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

/**
 * Paper model.
 */
export interface Paper {
  id: string;
  paperTitle: string;
  authors: string[];
  // optionals
  keywords?: string; 
  abstract?: string;
  link?: string;
  tag?: string;
  
}


