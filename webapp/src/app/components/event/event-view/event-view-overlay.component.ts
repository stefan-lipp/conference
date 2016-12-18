import { Component, Optional } from '@angular/core';
import { MdDialogRef } from '@angular/material';

import { ConferenceEvent } from '../../../models/conference-event.model';

@Component({
  selector: 'event-view-overlay',
  template: `
   <conference-event-view [event]="event" ></conference-event-view>
   <p class="btn-wrapper">
     <button md-button (click)="dialogRef.close(true)">Back</button>
   </p>
   `,
   styleUrls: [ './overlay.styles.css' ],
 })
export class EventViewOverlayComponent {

  public event: ConferenceEvent;

  constructor(
    @Optional() public dialogRef: MdDialogRef<EventViewOverlayComponent>,
  ) { }

}
