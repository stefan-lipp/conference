import * as moment from 'moment';

import {
  Component,
  Input,
  Output,
  EventEmitter,
} from '@angular/core';

import { ConferenceSession } from '../../../models/conference-session.model';
import { AuthService } from '../../../services';

@Component({
  selector: 'conference-session-list',
  templateUrl: 'session-list.template.html',
})
export class SessionListComponent  {

  @Output()
  public onFavouriteStateChange: EventEmitter<[ConferenceSession, boolean]> =
    new EventEmitter<[ConferenceSession, boolean]>();

  @Input()
  public sessions: ConferenceSession[] = [ ];

  constructor (
    public authService: AuthService,
  ) { }

  public formatTime (time: moment.Moment): string {
    return time.format('MMM Do, HH:mm');
  }

}
