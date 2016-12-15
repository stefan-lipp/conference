import {
  Component,
  Input,
  Output,
  EventEmitter,
} from '@angular/core';

import { Event } from '../../../models/event.model';
//mocking
import { EVENTS } from '../../../services//event/mock-events';

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

 /** Method for creating the overlay component and passing parameter to it
  * 
  *  @param {Event} event event whose details will be shown
  */
  public displayEventview (event: Event): void {
    
    const dialogRef = this.dialog.open(OverlayComponent, {
       disableClose: false,
    });
     // real:
      dialogRef.componentInstance.event = event;
    // mocking for layouting and stuff: dialogRef.componentInstance.event = EVENTS[0]; 

  }

}
