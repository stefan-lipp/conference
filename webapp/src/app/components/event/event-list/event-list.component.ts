import {
  Component,
  Input,
  Output,
  EventEmitter,
} from '@angular/core';
import { MdDialog } from '@angular/material';

import { ConferenceEvent } from '../../../models/conference-event.model';
import { AuthService } from '../../../services';

import { EventViewOverlayComponent } from '../event-view/event-view-overlay.component';

@Component({
  selector: 'conference-event-list',
  templateUrl: 'event-list.template.html',
})
export class EventListComponent  {

  @Output()
  public onFavouriteStateChange: EventEmitter<[ConferenceEvent, boolean]> =
    new EventEmitter<[ConferenceEvent, boolean]>();

  @Input()
  public events: ConferenceEvent[] = [ ];

  constructor (
    public authService: AuthService,
    private dialog: MdDialog,
    public authService: AuthService,
  ) { }

  /**
   * Method for creating the overlay component and passing parameter to it
   *
   * @param {Event} event event whose details will be shown
   */
  public displayEventview (event: ConferenceEvent): void {
    const dialogRef = this.dialog.open(EventViewOverlayComponent, {
       disableClose: false,
    });

    dialogRef.componentInstance.event = event;
  }

}
