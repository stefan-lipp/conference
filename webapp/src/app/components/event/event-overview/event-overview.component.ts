import {
  Component,
  OnInit,
  Input,
} from '@angular/core';
import { Router } from '@angular/router';

import { ConferenceEvent } from '../../../models';
import { EventService } from '../../../services';
import {
  CalendarEvent,
  CalendarTrack,
} from '../../ui-elements/calendar';

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

  public eventTypes: string[] = [
    'Keynote', 'Research Talk', 'Industry Talk', 'Tutorial', 'Workshop', 'Demo',
  ];

  /** List of all available events */
  private allEvents: ConferenceEvent[] = [ ];

  private lastVisitedLink: string;

  /**
   * Constructor for the events component.
   */
  constructor (
    private eventService: EventService,
    private router: Router,
  ) {
    let url = this.router.url;
    if (url.includes('#')) {
      this.lastVisitedLink = url;
    }
  }

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

  /** @return Calendar Track representation of the events */
  public get tracks (): CalendarTrack[] {
    // TODO convert events into calendar tracks
    return [ {
        color: '#fff',
        backgroundColor: '#03a9f4',
        isDisplayed: true,
        events: this.events
          .filter(e =>
            Boolean(e.startTime) && e.startTime.isValid() &&
            Boolean(e.endTime) && e.endTime.isValid()
          )
          .map(e => <CalendarEvent> Object({
            title: e.title,
            startTime: e.startTime,
            endTime: e.endTime,
          })),
      } ];
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
      this.events.forEach(event => {
          if (event.paper && event.paper.keywords) {
            event.paper.keywords.forEach(keyword => {
              if (keyword.toLowerCase().includes(this.filterQuery.toLowerCase())) {
                this.selectedEvents.push(event);
              }
            });
          }
        });
       this.events.forEach(event => {
          if (event.paper && event.paper.authors) {
            event.paper.authors.forEach(author => {
              if (author.name.toLowerCase().includes(this.filterQuery.toLowerCase())) {
                this.selectedEvents.push(event);
              }
            });
          }
        });
       this.events.forEach(event => {
          if (event.speaker) {
              if (event.speaker.toLowerCase().includes(this.filterQuery.toLowerCase())) {
                this.selectedEvents.push(event);
              }
          }
        });
      this.selectedEvents = this.unify(this.selectedEvents);
    } else {
      this.selectedEvents = this.events;
    }
  }

  public setFavouriteState ([ event, state ]: [ ConferenceEvent, boolean ]) {
    event.favored = state;
    this.eventService.updateFavourStatus(event);
  }

  /**
   * Eliminates duplicates of an array
   */
  private unify (events: ConferenceEvent[]): ConferenceEvent[] {
    let unique: ConferenceEvent[] = [ ];
    for (let i in events) {
      if (unique.indexOf(events[i]) === -1) {
        unique.push(events[i]);
      }
    }
    return unique;
  }
}
