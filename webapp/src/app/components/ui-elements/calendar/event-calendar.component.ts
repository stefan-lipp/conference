import * as moment from 'moment';
import {
  Component,
  Input,
} from '@angular/core';
import {
  CalendarEvent,
  CalendarTrack,
} from './calendar.component';
import { ConferenceEvent } from '../../../models';


/** Calendar component specifically for ConferenceEvent */
@Component({
  selector: 'conference-event-calendar',
  templateUrl: './event-calendar.template.html',
  styleUrls: [ './event-calendar.style.scss' ],
})
export class EventCalendarComponent {

  @Input()
  public events: ConferenceEvent[] = [ ];

  /** @return Calendar Track representation of the events */
  public get tracks (): CalendarTrack[] {
    // TODO convert events into calendar tracks
    return [ {
        color: '#fff',
        backgroundColor: '#03a9f4',
        isDisplayed: true,
        events: this.events
          .filter(e =>
            Boolean(e.startTime) && e.startTime.isValid() &&
            Boolean(e.endTime) && e.endTime.isValid()
          )
          .map(e => <CalendarEvent> Object({
            title: e.title,
            startTime: e.startTime,
            endTime: e.endTime,
            meta: {
              favored: e.favored,
            },
          })),
      } ];
  }

  public formatTime(dateTime: moment.Moment): string {
    return dateTime.format('HH:mm');
  }
}
