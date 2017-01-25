import {
  Component,
  OnInit,
} from '@angular/core';

import { SessionService } from 'app/services';
import { ConferenceSession } from 'app/models';

@Component({
  selector: 'conference-my-schedule',
  templateUrl: './my-schedule.template.html',
  styleUrls: [ './my-schedule.style.scss' ],
})
export class MyScheduleComponent implements OnInit {

  public sessions: ConferenceSession[] = [ ];

  constructor (
    private sessionService: SessionService,
  ) { }

  public ngOnInit () {
    this.sessionService
      .getFavorites()
      .subscribe((sessions: ConferenceSession[]) => this.sessions = sessions);
  }

}
