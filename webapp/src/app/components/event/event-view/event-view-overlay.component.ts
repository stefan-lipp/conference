import {
  Component,
  Optional,
} from '@angular/core';
import { MdDialogRef } from '@angular/material';

import { ConferenceEvent } from '../../../models/conference-event.model';

@Component({
  selector: 'event-view-overlay',
  template: `
   <conference-event-view [event]="event" ></conference-event-view>
   <p class="align-right">
     <button md-button (click)="dialogRef.close(true)">Back</button>
   </p>
   `,
 })
export class EventViewOverlayComponent {

  public event: ConferenceEvent;

  constructor(
    @Optional() public dialogRef: MdDialogRef<EventViewOverlayComponent>,
  ) { }
}
