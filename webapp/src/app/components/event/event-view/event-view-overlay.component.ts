import { Component } from '@angular/core';

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

}
