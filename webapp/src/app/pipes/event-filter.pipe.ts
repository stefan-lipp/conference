import { Pipe, PipeTransform } from '@angular/core';

import { ConferenceEvent } from '../models';

@Pipe({ name: 'EventFilter' })
export class EventFilterPipe implements PipeTransform {

  /**
   * @memberof PipeTransform
   */
  transform (events: ConferenceEvent[], eventType: string): ConferenceEvent[] {
    return events.filter(event => event.eventType === eventType);
  }
}
