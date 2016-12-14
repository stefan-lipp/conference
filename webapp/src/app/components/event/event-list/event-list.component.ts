import {
  Component,
  Input,
  Output,
  EventEmitter,
} from '@angular/core';

import { Event } from '../../models/event.model';

import { OverlayComponent } from '../event-view/event-view-overlay.component';
import { MdDialog } from '@angular/material';

@Component({
  selector: 'conference-event-list',
  templateUrl: 'event-list.template.html',
  styleUrls: [ 'event-list.style.scss' ],
})
export class EventListComponent  {

  constructor (
    private dialog: MdDialog,
  ){}

  @Output()
  public onFavouriteStateChange: EventEmitter<[Event, boolean]> =
    new EventEmitter<[Event, boolean]>();

  @Input()
  public events: Event[] = [ ];

  public displayEventview (event: Event): void {
    console.log("displayEventview reached");
   
    let dialogRef = this.dialog.open(OverlayComponent, {
       disableClose: true,
       
    });
  }

}
