import {
  Component,
  Input,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { ConferenceEvent } from '../../../models';
import { EventService } from '../../../services';

@Component({
  selector: 'conference-event-view',
  templateUrl: './event-view.template.html',
  styleUrls: [ './event-view.styles.scss' ],
})
export class EventViewComponent {

  @Input()
  public event: ConferenceEvent;

  public showLocation: boolean = false;

  constructor (
    private route: ActivatedRoute,
    private eventService: EventService,
  ) { }

 /**
  *  method to toggle Status of the Event and commit this to the api
  * @param {ConferenceEvent} event event to be updated
  * @param {boolean} state new bookmarking status
  */
  public toggleBookmark ( event: ConferenceEvent, state: boolean) {
    this.eventService.updateFavourStatus(event);
    event.favoured = state;
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
}
