import {
  Component,
  OnInit,
  Input,
} from '@angular/core';

import { Event } from '../../models';
import { EventService } from '../../services';

@Component({
  selector: 'conference-event-overview',
  templateUrl: './event-overview.template.html',
  styleUrls: [ './event-overview.style.scss' ],
})
export class EventOverviewComponent implements OnInit {

  /** Current filter query */
  public filterQuery: string = '';

  /** Subset of all events */
  public selectedEvents: Event[] = [ ];

  /** List of all available events */
  private allEvents: Event[] = [ ];

  /**
   * Constructor for the events component.
   */
  constructor (
    private eventService: EventService
  ) { }

  /**
   * Gets all events of the conference
   *
   * @memberof OnInit
   */
  public ngOnInit () {
    this.eventService.getAll().subscribe(events => this.events = events);
  }

  /** Setter for allEvents */
  @Input()
  public set events (events: Event[]) {
    this.allEvents = events;
    this.filter();
  }

  /** Getter for allEvents */
  public get events (): Event[] {
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

  public setFavouriteState ([ event, state ]: [ Event, boolean ]) {
    event.favoured = state;
    this.eventService.updateFavourStatus(event);
  }
}
