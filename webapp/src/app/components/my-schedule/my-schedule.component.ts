import {
  Component,
  OnInit,
} from '@angular/core';

import {
  CalendarTrack,
  CalendarEvent,
} from '../ui-elements/calendar';
import { SessionService } from '../../services';
import { ConferenceSession } from '../../models';

@Component({
  selector: 'conference-my-schedule',
  templateUrl: './my-schedule.template.html',
  styleUrls: [ './my-schedule.style.scss' ],
})
export class MyScheduleComponent implements OnInit {

	/** List of all available sessions */
  private allSessions: ConferenceSession[] = [ ];

  constructor (
    private sessionService: SessionService,
  ) { }


  public get tracks (): CalendarTrack[] {
    // TODO convert events into calendar tracks
    return this.allSessions
      .filter(s =>
        Boolean(s.startTime) && s.startTime.isValid() &&
        Boolean(s.endTime) && s.endTime.isValid(),
      )
      .map(s => <CalendarTrack> {
        color: s.track.color,
        backgroundColor: s.track.backgroundColor,
        isDisplayed: true,
        events: [ <CalendarEvent> Object({
          title: s.name,
          id: s.id,
          startTime: s.startTime,
          endTime: s.endTime,
        }) ],
      });
  }

  public ngOnInit () {
    this.sessionService.getFavorites().subscribe(sessions => {
      this.allSessions = sessions;
    });
  }

}
