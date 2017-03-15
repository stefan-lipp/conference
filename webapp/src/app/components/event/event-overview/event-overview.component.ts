import {
  Component,
  OnInit,
  Input,
} from '@angular/core';
import { Router } from '@angular/router';

import {
  Conference,
  ConferenceEvent,
  ConferenceSession,
  EventType,
} from '../../../models';
import {
  EventService,
  SessionService,
} from '../../../services';
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

  /**
   * Whether currently loading the event data from the API
   *
   * @type {boolean}
   * @memberOf EventOverviewComponent
   */
  public loading: boolean = true;

  /**
   * Currently active tab
   *
   * @memberOf EventOverviewComponent
   */
  public selectedTab = 0;

  public conference = Conference;

  /**
   * Current filter query
   *
   * @type {string}
   * @memberOf EventOverviewComponent
   */
  public filterQuery: string = '';

  /**
   * Subset of all events, by filterQuery
   *
   * @type {ConferenceEvent[]}
   * @memberOf EventOverviewComponent
   */
  public selectedEvents: ConferenceEvent[] = [ ];

  /**
   * selectedEvents grouped by their type
   *
   * @memberOf EventOverviewComponent
   */
  public selectedEventsByType: { type: string, events: ConferenceEvent[] }[] = [ ];

  /**
   * List of all available events
   *
   * @private
   * @type {ConferenceEvent[]}
   * @memberOf EventOverviewComponent
   */
  private allEvents: ConferenceEvent[] = [ ];

  /**
   * List of all available sessions
   *
   * @private
   * @type {ConferenceSession[]}
   * @memberOf EventOverviewComponent
   */
  private allSessions: ConferenceSession[] = [ ];

  private lastVisitedLink: string;

  /**
   * Constructor for the events component.
   */
  constructor (
    private eventService: EventService,
    private sessionService: SessionService,
    private router: Router,
  ) {
    let url = this.router.url;
    if (url.includes('#calender')) {
      this.selectedTab = 1;
    } else if (url.includes('#')) {
      this.lastVisitedLink = url;
    }
  }

  /**
   * Gets all events of the conference
   *
   * @memberOf OnInit
   */
  public ngOnInit () {
    this.eventService.getAll().subscribe(events => {
      this.events = events;
      this.loading = false;
    });
    this.sessionService.getAll().subscribe(sessions => {
      this.allSessions = sessions;
    });
  }

  /**
   * @memberOf EventOverviewComponent
   */
  @Input()
  public set events (events: ConferenceEvent[]) {
    this.allEvents = events;
    this.applyFilter();
  }

  /**
   * @readonly
   * @type {ConferenceEvent[]}
   * @memberOf EventOverviewComponent
   */
  public get events (): ConferenceEvent[] {
    return this.allEvents;
  }

  /** @return Calendar Track representation of the events */
  public get tracks (): CalendarTrack[] {
    // TODO convert events into calendar tracks
    return this.allSessions
      .filter(s =>
        Boolean(s.startTime) && s.startTime.isValid() &&
        Boolean(s.endTime) && s.endTime.isValid(),
      )
      .map(s => <CalendarTrack> {
        color: s.track.color,
        backgroundColor: s.track.backgroundColor,
        isDisplayed: true,
        events: [ <CalendarEvent> Object({
          title: s.name,
          id: s.id,
          startTime: s.startTime,
          endTime: s.endTime,
        }) ],
      });
  }

  /**
   * Sets selectedEvents to all Events from events matching the filterQuery
   *
   * @return {void}
   *
   * @memberOf EventOverviewComponent
   */
  public applyFilter (): void {
    if (this.filterQuery.length) {
      const query = this.filterQuery.toLowerCase();

      this.selectedEvents = this.events.filter(event => {
        const titleMatches: boolean = event.title.toLowerCase().includes(query);
        const speakerMatches: boolean = event.speakers && event.speakers.some(speaker =>
          speaker.name.toLowerCase().includes(query) ||
          (speaker.institution && speaker.institution.name.toLowerCase().includes(query))
        );
        const keywordsMatch: boolean = event.paper && event.paper.keywords &&
          event.paper.keywords.some(keyword => keyword.toLowerCase().includes(query));
        const authorsMatch: boolean = event.paper && event.paper.authors &&
          event.paper.authors.some(author => author.name.toLowerCase().includes(query));

        return titleMatches || speakerMatches || keywordsMatch || authorsMatch;
      });
    } else {
      this.selectedEvents = this.events;
    }

    // Grouped by type
    const groupedDict = this.selectedEvents.reduce((dict, event) => {
      const type = event.eventType;
      if (!dict.hasOwnProperty(type)) {
        dict[type] = [ ];
      }
      dict[type].push(event);
      return dict;
    }, { });
    this.selectedEventsByType = Object.keys(groupedDict).map(type => {
      return {
        type: type,
        events: groupedDict[type],
      };
    });
  }

  /**
   * Makes API call to set favourite state of an event
   *
   * @param {[ ConferenceEvent, boolean ]} [ event, state ]
   *
   * @memberOf EventOverviewComponent
   */
  public setFavouriteState ([ event, state ]: [ ConferenceEvent, boolean ]): void {
    event.favored = state;
    this.eventService.updateFavourStatus(event).subscribe(
      (data: any) => { /* success */ },
      (error) => event.favored = !event.favored,
    );
  }

}
