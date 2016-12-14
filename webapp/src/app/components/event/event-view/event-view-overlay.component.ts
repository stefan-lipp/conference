import { Component, Optional } from '@angular/core';
import { MdDialogRef } from '@angular/material';

import { Event } from '../../../models/event.model';

//mocking
import { EVENTS } from '../../../services//event/mock-events';

@Component({
  selector: 'event-view-overlay',
  template: `
       <conference-event-view [event]="event" ></conference-event-view>
       <p>
         <button md-button (click)="dialogRef.close(true)">Back</button>
       </p>
   `,
 })


export class OverlayComponent {
  constructor(@Optional() public dialogRef: MdDialogRef<OverlayComponent>) { }
 
 
  public event: Event = EVENTS[0];
}
