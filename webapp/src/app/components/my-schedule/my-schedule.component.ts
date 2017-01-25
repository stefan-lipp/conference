import {
  Component,
  OnInit,
} from '@angular/core';

import {
  CalendarTrack,
  CalendarEvent,
} from '../ui-elements/calendar';
import { EventService } from '../../services';
import { ConferenceEvent } from '../../models';

@Component({
  selector: 'conference-my-schedule',
  templateUrl: './my-schedule.template.html',
  styleUrls: [ './my-schedule.style.scss' ],
})
export class MyScheduleComponent implements OnInit {

  public tracks: CalendarTrack[];

  constructor (
    private eventService: EventService,
  ) { }

  public ngOnInit () {
    this.eventService.getFavorites().subscribe((events: ConferenceEvent[]) => {
      // TODO convert events into calendar tracks
      this.tracks = [ {
        color: '#fff',
        backgroundColor: '#03a9f4',
        isDisplayed: true,
        events: events
          .filter(e =>
            Boolean(e.startTime) && e.startTime.isValid() &&
            Boolean(e.endTime) && e.endTime.isValid()
          )
          .map(e => <CalendarEvent> Object({
            title: e.title,
            startTime: e.startTime,
            endTime: e.endTime,
          })),
      } ];
    });
  }

}
