import {
  Component,
  OnInit,
  Input,
} from '@angular/core';

import { ConferenceEvent } from '../../../models';
import { EventService } from '../../../services';

@Component({
  selector: 'conference-event-overview',
  templateUrl: './event-overview.template.html',
  styleUrls: [ './event-overview.style.scss' ],
})
export class EventOverviewComponent implements OnInit {

  public loading: boolean = true;

  /** Current filter query */
  public filterQuery: string = '';

  /** Subset of all events */
  public selectedEvents: ConferenceEvent[] = [ ];

  /** List of all available events */
  private allEvents: ConferenceEvent[] = [ ];

  /**
   * Constructor for the events component.
   */
  constructor (
    private eventService: EventService,
  ) { }

  /**
   * Gets all events of the conference
   *
   * @memberof OnInit
   */
  public ngOnInit () {
    this.eventService.getAll().subscribe(events => {
      this.events = events;
      this.loading = false;
    });
  }

  /** Setter for allEvents */
  @Input()
  public set events (events: ConferenceEvent[]) {
    this.allEvents = events;
    this.filter();
  }

  /** Getter for allEvents */
  public get events (): ConferenceEvent[] {
    return this.allEvents;
  }

  /**
   * Sets selectedEvents to all Events from events whoose title contain filterQuery
   *
   * @return {void}
   */
  public filter (): void {
    if (this.filterQuery.length) {
      this.selectedEvents = this.events.filter(
        event => event.title.toLowerCase().includes(this.filterQuery.toLowerCase())
      );
    } else {
      this.selectedEvents = this.events;
    }
  }

  public setFavouriteState ([ event, state ]: [ ConferenceEvent, boolean ]) {
    event.favored = state;
    this.eventService.updateFavourStatus(event).subscribe(_ => null, err => console.error(err));
  }
}
