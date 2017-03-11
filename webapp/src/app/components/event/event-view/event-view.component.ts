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

  @Input()
  public event: ConferenceEvent;

  private isAuthorised: boolean = false;

  constructor (
    private route: ActivatedRoute,
    private eventService: EventService,
    private personService: PersonService,
    public authService: AuthService,
  ) { }

  /**
   * Gets an event without paper via the Resolver
   * and fetches Event (incl. Paper)
   *
   * @memberof OnInit
   */
  public ngOnInit() {
    this.route.data.subscribe((data: { event: ConferenceEvent }) => this.event = data.event);
    this.checkAuthorisation();
  }

  /**
   *  method to set favorite sate of an event and commit this to the api
   * @param {ConferenceEvent} event event to be updated
   * @param {boolean} state new bookmarking status
   */
  public setFavorState (event: ConferenceEvent, state: boolean) {
    event.favored = state;
    this.eventService.updateFavourStatus(event).subscribe(
      (data: any) => { /* success */ },
      (error) => event.favored = !event.favored,
    );
  }

  /**
   * Returns the formatted event date.
   */
  public getFormattedEventDate(): string {
    if (this.event.startTime) {
      return this.event.startTime.format('MMMM Do YYYY');
    }
    return '- - -';
  }

  /**
   * Returns the formatted event start and end time.
   */
  public getFormattedEventTime(): string {
    if (this.event.startTime && this.event.endTime) {
      return this.event.startTime.format('HH:mm') + ' - ' + this.event.endTime.format('HH:mm');
    }
    return '- - -';
  }

  public checkAuthorisation (): void {
    if (this.event.speakers.some(speaker => speaker.id === this.authService.userId)) {
      this.isAuthorised = true;
    } else if (this.event.paper.authors.some(author => author.id == this.authService.userId)) {
      this.isAuthorised = true;
    } else {
      this.isAuthorised = this.authService.isAdmin;
    }
  };
}
