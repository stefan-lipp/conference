import { Component, Optional } from '@angular/core';
import { MdDialogRef } from '@angular/material';

import { Event } from '../../../models/event.model';

//mocking
import { EVENTS } from '../../../services//event/mock-events';

@Component({
  selector: 'event-view-overlay',
  template: `
   <conference-event-view [event]="event" ></conference-event-view>
   <button md-button class="btn" (click)="dialogRef.close(true)">Back</button>
   `,
 })


export class OverlayComponent {
  constructor(@Optional() public dialogRef: MdDialogRef<OverlayComponent>) { }
 
 
  public event: Event = EVENTS[0];
}
