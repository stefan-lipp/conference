import {
  Component,
  OnInit,
  Input,
} from '@angular/core';

import { ConferenceSession } from '../../../models';
import { SessionService } from '../../../services';
import {
  CalendarEvent,
  CalendarTrack,
} from '../../ui-elements/calendar';

@Component({
  selector: 'conference-event-overview',
  templateUrl: './session-overview.template.html',
  styleUrls: [ './session-overview.style.scss' ],
})
export class SessionOverviewComponent implements OnInit {

  public loading: boolean = true;

  /** Current filter query */
  public filterQuery: string = '';

  /** Subset of all events */
  public selectedSessions: ConferenceSession[] = [ ];

  /** List of all available events */
  private allSession: ConferenceSession[] = [ ];

  /**
   * Constructor for the events component.
   */
  constructor (
    private sessionService: SessionService,
  ) { }

  /**
   * Gets all events of the conference
   *
   * @memberof OnInit
   */
  public ngOnInit () {
    this.sessionService.getAll().subscribe(session => {
      this.sessions = session;
      this.loading = false;
    });
  }

  /** Setter for allEvents */
  @Input()
  public set sessions (events: ConferenceSession[]) {
    this.allSession = events;
    this.filter();
  }

  /** Getter for allEvents */
  public get sessions (): ConferenceSession[] {
    return this.allSession;
  }

  /** @return Calendar Track representation of the events */
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
          .map(e => <CalendarEvent> Object({
            title: e.title,
            startTime: e.startTime,
            endTime: e.endTime,
          })),
      } ];
  }

  /**
   * Sets selectedEvents to all Events from events whoose title contain filterQuery
   *
   * @return {void}
   */
  public filter (): void {
    if (this.filterQuery.length) {
      this.selectedSessions = this.sessions.filter(
        session => session.title.toLowerCase().includes(this.filterQuery.toLowerCase())
      );
    } else {
      this.selectedSessions = this.sessions;
    }
  }

  public setFavouriteState ([ session, state ]: [ ConferenceSession, boolean ]) {
    session.favored = state;
    // this.sessionService.updateFavourStatus(event);
  }
}