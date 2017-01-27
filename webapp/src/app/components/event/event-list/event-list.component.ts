import * as moment from 'moment';

import {
  Component,
  Input,
  Output,
  EventEmitter,
} from '@angular/core';
import { Router } from '@angular/router';

import { MdDialog } from '@angular/material';

import { EventViewOverlayComponent } from '../event-view/event-view-overlay.component';

import { ConferenceEvent } from '../../../models/conference-event.model';
import { AuthService } from '../../../services';

@Component({
  selector: 'conference-event-list',
  templateUrl: 'event-list.template.html',
  styleUrls: [ 'event-list.style.scss' ],
})
export class EventListComponent  {

  @Output()
  public onFavouriteStateChange: EventEmitter<[ConferenceEvent, boolean]> =
    new EventEmitter<[ConferenceEvent, boolean]>();

  @Input()
  public events: ConferenceEvent[] = [ ];

  constructor (
    private dialog: MdDialog,
    private router: Router,
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

  public formatTime (time: moment.Moment): string {
    return time.format('MMM Do, HH:mm');
  }
}
