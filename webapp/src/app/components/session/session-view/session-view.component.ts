import * as moment from 'moment';
import {
  Component,
  Input,
  OnInit,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { ConferenceSession } from 'app/models';
import {
  AuthService,
  SessionService,
} from 'app/services';

@Component({
  selector: 'conference-session-view',
  templateUrl: './session-view.template.html',
  styleUrls: [ './session-view.style.scss' ],
})
export class SessionViewComponent implements OnInit {

  @Input()
  public session: ConferenceSession;

  constructor (
    public authService: AuthService,
    private route: ActivatedRoute,
    private sessionService: SessionService,
  ) { }

  public ngOnInit () {
    this.route.data.subscribe((data: { session: ConferenceSession }) =>
      this.session = data.session
    );
  }

  /**
   *  method to set favorite sate of an event and commit this to the api
   * @param {ConferenceSession} event event to be updated
   * @param {boolean} state new bookmarking status
   */
  public setFavoriteState (session: ConferenceSession, state: boolean) {
    session.favored = state;
    this.sessionService.updateFavorStatus(session);
  }

  public formatTime (time: moment.Moment): string {
    return time.format('MMM Do, HH:mm');
  }

}
