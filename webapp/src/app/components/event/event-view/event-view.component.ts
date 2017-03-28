import {
  Component,
  Input,
  OnInit,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { ConferenceEvent } from 'app/models';
import {
  EventService,
  AuthService,
  PersonService,
} from 'app/services';

@Component({
  selector: 'conference-event-view',
  templateUrl: './event-view.template.html',
  styleUrls: [ './event-view.styles.scss' ],
})
export class EventViewComponent implements OnInit {

  /**
   * Event to display
   *
   * @type {ConferenceEvent}
   * @memberOf EventViewComponent
   */
  @Input()
  public event: ConferenceEvent;

  /**
   * Whether the current user is authorized
   *
   * @type {boolean}
   * @memberOf EventViewComponent
   */
  public isAuthorised: boolean = false;

  constructor (
    public authService: AuthService,
    private eventService: EventService,
    private personService: PersonService,
    private route: ActivatedRoute,
  ) { }

  /**
   * @memberOf OnInit
   */
  public ngOnInit() {
    this.route.data.subscribe((data: { event: ConferenceEvent }) => this.event = data.event);
    this.checkAuthorisation();
  }

  /**
   * Set favorite sate of an event and commit this to the API
   *
   * @param {ConferenceEvent} event event to be updated
   * @param {boolean} state new bookmarking status
   *
   * @memberOf EventViewComponent
   */
  public setFavorState (event: ConferenceEvent, state: boolean): void {
    event.favored = state;
    this.eventService.updateFavourStatus(event).subscribe(
      // on success: do nothing (already set above)
      data => null,
      // on error: reset
      error => event.favored = !event.favored,
    );
  }

  /**
   * Updates the isAuthorised flag
   *
   * @memberOf EventViewComponent
   */
  public checkAuthorisation (): void {
    if (this.event.speakers.some(speaker => speaker.id === this.authService.userId)) {
      this.isAuthorised = true;
    } else if (this.event.paper.authors.some(author => author.id === this.authService.userId)) {
      this.isAuthorised = true;
    } else {
      this.isAuthorised = this.authService.isAdmin;
    }
  }
}
