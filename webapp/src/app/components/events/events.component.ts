import {
  Component,
  Input,
  Output,
  EventEmitter,
} from '@angular/core';

import { Event } from '../../models/event.model';

@Component({
  selector: 'conference-events',
  templateUrl: 'events.template.html',
  styleUrls: [ 'events.style.scss' ],
})
export class EventsComponent  {

  @Output()
  public onFavouriteStateChange: EventEmitter<[Event, boolean]> =
    new EventEmitter<[Event, boolean]>();

  @Input()
  public events: Event[];

 }
