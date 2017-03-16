import {
  Component,
  Input,
  Output,
  EventEmitter,
} from '@angular/core';


import { ConferenceEvent } from '../../../models/conference-event.model';
import { AuthService } from '../../../services';

@Component({
  selector: 'conference-event-list',
  templateUrl: 'event-list.template.html',
  styleUrls: [ 'event-list.style.scss' ],
})
export class EventListComponent  {

  /**
   * Event emitter to propagate changes in an events favourite-state
   *
   * @type {EventEmitter<[ConferenceEvent, boolean]>}
   * @memberOf EventListComponent
   */
  @Output()
  public onFavouriteStateChange: EventEmitter<[ConferenceEvent, boolean]> =
    new EventEmitter<[ConferenceEvent, boolean]>();

  /**
   * Events to display
   *
   * @type {ConferenceEvent[]}
   * @memberOf EventListComponent
   */
  @Input()
  public events: ConferenceEvent[] = [ ];

  constructor (
    public authService: AuthService,
  ) { }

}
