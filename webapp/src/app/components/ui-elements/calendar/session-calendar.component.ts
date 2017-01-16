import * as moment from 'moment';
import {
  Component,
  Input,
} from '@angular/core';
import {
  CalendarEvent,
  CalendarTrack,
} from './calendar.component';
import { ConferenceSession } from '../../../models';


/** Calendar component specifically for ConferenceSession */
@Component({
  selector: 'conference-session-calendar',
  templateUrl: './session-calendar.template.html',
  styleUrls: [ './session-calendar.style.scss' ],
})
export class SessionCalendarComponent {

  @Input()
  public sessions: ConferenceSession[] = [ ];

  /** @return Calendar Track representation of the sessions */
  public get tracks (): CalendarTrack[] {
    // TODO convert events into calendar tracks
    return [ {
        color: '#fff',
        backgroundColor: '#03a9f4',
        isDisplayed: true,
        events: this.sessions
          .filter(s =>
            Boolean(s.startTime) && s.startTime.isValid() &&
            Boolean(s.endTime) && s.endTime.isValid()
          )
          .map(s => <CalendarEvent> Object({
            title: s.title,
            startTime: s.startTime,
            endTime: s.endTime,
            meta: {
              favored: s.favored,
            },
          })),
      } ];
  }

  public formatTime(dateTime: moment.Moment): string {
    return dateTime.format('HH:mm');
  }
}
