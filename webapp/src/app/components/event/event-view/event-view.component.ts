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

  public showLocation: boolean = false;

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
  }

  /**
   *  method to set favorite sate of an event and commit this to the api
   * @param {ConferenceEvent} event event to be updated
   * @param {boolean} state new bookmarking status
   */
  public setFavorState (event: ConferenceEvent, state: boolean) {
    event.favored = state;
    this.eventService.updateFavourStatus(event);
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

  /**
   *  method to build the graphical location information
   *
   * TODO change map with map of VLDB location
   * TODO get drawing data according to event.room
   */
  public drawCanvas (): void {
    this.showLocation = true;

    const canvas: HTMLCanvasElement = <HTMLCanvasElement> document.getElementById('eventMapCanvas');
    const context: CanvasRenderingContext2D = canvas.getContext('2d');
    context.font = '20px Arial';
    context.fillText('load map', canvas.width / 2, canvas.height / 2);

    // Image set up
    const img = new Image();
    img.src = 'http://www.ma.tum.de/foswiki/pub/Mathematik/AnfahrtCampusGarching/fmi.svg';
    context.drawImage(img, 1, 1, canvas.width , canvas.height);

    // Draw hint
    const room = [ 100, 80 ]; // Room coordinates
    const hint = new Image();
    hint.src = 'https://d30y9cdsu7xlg0.cloudfront.net/png/677417-200.png';
    context.drawImage(hint, room[0], room[1], 25 , 25);
  }

  public isAuthor (): Boolean {
    this.personService.getLoggedInPerson().subscribe(person => {
      if (this.event.speakers.findIndex(speaker => speaker === person) > -1) {
        return true;
      } else if (this.event.paper.authors.findIndex(author => author === person) > -1) {
        return true;
      } else {
        return this.authService.isAdmin;
      }
    });
        return this.authService.isAdmin;
  }

}
