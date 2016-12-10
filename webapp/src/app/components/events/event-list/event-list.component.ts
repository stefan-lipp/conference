import {
  Component,
  Input,
  Output,
  EventEmitter,
} from '@angular/core';

import { Event } from '../../../models/event.model';

@Component({
  selector: 'conference-event-list',
  templateUrl: 'event-list.template.html',
  styleUrls: [ 'event-list.style.scss' ],
})
export class EventListComponent  {

  @Output()
  public onFavouriteStateChange: EventEmitter<[Event, boolean]> =
    new EventEmitter<[Event, boolean]>();

  @Input()
  public events: Event[] = [ ];

 }
