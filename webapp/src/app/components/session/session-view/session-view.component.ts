import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { EventService } from '../../../services';
import { ConferenceSession, ConferenceEvent } from '../../../models';

@Component({
  selector: 'conference-session-view',
  templateUrl: 'session-view.template.html',
  styleUrls: [ 'session-view.style.scss' ],
})
export class SessionViewComponent implements OnInit {

  @Input()
  public session: ConferenceSession;

  constructor (
    private route: ActivatedRoute,
    private eventService: EventService,

  ) { }

  /**
   * @memberof OnInit
   */
  public ngOnInit() {
    this.route.data.subscribe((data: { session: ConferenceSession }) =>
      this.session = data.session
    );
  }

  /**
   * Updates and saves the given event favourite states.
   */
  public setFavouriteState ([ event, state ]: [ ConferenceEvent, boolean ]) {
    event.favored = state;
    this.eventService.updateFavourStatus(event);
  }

  /**
   * Returns the formatted session date.
   */
  public getFormattedSessionDate(): string {
    return this.session.startTime.format('MMMM Do YYYY');
  }

  /**
   * Returns the formatted session start and end time.
   */
  public getFormattedSessionTime(): string {
    return this.session.startTime.format('HH:mm') + ' - ' + this.session.endTime.format('HH:mm');
  }


}
