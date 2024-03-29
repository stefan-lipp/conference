import * as moment from 'moment';
import {
  Component,
  Input,
  ElementRef,
} from '@angular/core';
import { Conference } from '../../../models';

export interface CalendarEvent {
  title: string;
  subtitle: string;
  id: number;
  startTime: moment.Moment;
  endTime: moment.Moment;
}

export interface CalendarTrack {
  color: string;
  backgroundColor: string;
  isDisplayed: boolean;
  events: CalendarEvent[];
}

/** Available timeframe sizes */
type Timeframe = 'day' | 'week' | 'month';

@Component({
  selector: 'conference-calendar',
  templateUrl: './calendar.template.html',
  styleUrls: [ './calendar.style.scss' ],
})
export class CalendarComponent {

  @Input()
  public tracks: CalendarTrack[] = [ ];

  public viewportTimeframe: Timeframe = 'day';

  @Input()
  public selectedDay: moment.Moment = moment();

  public conference = Conference;

  constructor (
    private elem: ElementRef,
  ) {
    this.selectedDay = (moment() > this.conference.startDate && moment() < this.conference.endDate)
      ? moment() : this.conference.startDate;
    window.setTimeout(() => {
      const currentTimeIndicator: HTMLElement =
        this.elem.nativeElement.querySelector('.current-time');

      if (currentTimeIndicator) {
        currentTimeIndicator.scrollIntoView();
      }
    });
  }


  /**
   * Returns the tracks with only the events that should be visible in the current timeframe
   *
   * @return {CalendarTrack[]}
   */
  public get visibleTracks (): CalendarTrack[] {
    if (!this.tracks) {
      return [ ];
    } else {
      return this.tracks
        .filter(t => t.isDisplayed)
        .map(t => Object({
            color: t.color,
            backgroundColor: t.backgroundColor,
            display: t.isDisplayed,
            events: t.events.filter(e => this.inTimeframe(e)),
          })
        )
        .filter(t => t.events.length > 0);
    }
  }

  /**
   * Moves the current timeframe-viewport a given amount of timeframe to the past
   *
   * @param {number} amount Number of timeframes to step into the past
   * @param {TimeFrame} unit Type/size of timeframe step
   * @return {void}
   */
  public goToPast (amount: number = 1, unit: Timeframe = this.viewportTimeframe): void {
    this.selectedDay.subtract(amount, unit);
  }

  /**
   * Moves the current timeframe-viewport one timeframe to the future
   *
   * @param {number} amount Number of timeframes to step into the past
   * @param {TimeFrame} unit Type/size of timeframe step
   * @return {void}
   */
  public goToFuture (amount: number = 1, unit: Timeframe = this.viewportTimeframe): void {
    this.selectedDay.add(amount, unit);
  }

  /** @return {string[]} List of hours of the day (hh:00) */
  public get hours (): string[] {
    return Array(24).fill(null).map((_, i) => `${i}:00`);
  }

  /**
   * Converts a given time to the percentage of a full day.
   *
   * @param {Date} date Date to convert. Defaults to the current time
   * @return {number} Percentage of a full day (0-100)
   */
  public timeToPercentage (date: moment.Moment = moment()): number {
    const hours = date.hour();
    const minutes = date.minute();

    return Math.floor((hours / 24 + minutes / (24 * 60)) * 10000) / 100;
  }

  /**
   * Caclulates the necessary left offset of a given event to fit with other events.
   *
   * @param {CalendarEvent} event Event for which the left offset is requested
   * @return {number} Percentage value for left offset (0-100)
   */
  public getLeftPercentage (event: CalendarEvent): number {
    const overlappingEvents = this.getOverlappingEvents(event);
    const index = overlappingEvents.indexOf(event);
    return index * 100 / overlappingEvents.length;
  }

  /**
   * Caclulates the necessary right offset of a given event to fit with other events.
   *
   * @param {CalendarEvent} event Event for which the right offset is requested
   * @return {number} Percentage value for right offset (0-100)
   */
  public getRightPercentage (event: CalendarEvent): number {
    const overlappingEvents = this.getOverlappingEvents(event);
    const index = overlappingEvents.indexOf(event);
    return (overlappingEvents.length - index - 1) * 100 / overlappingEvents.length;
  }

  /**
   * Calculates all events that overlay with the given element (including that element)
   *
   * @param {CalendarEvent} event Event to find overlap with
   * @return {CalendarEvent[]} List of overlapping events including the input event
   */
  private getOverlappingEvents (event: CalendarEvent): CalendarEvent[] {
    return [].concat(...this.tracks.map(track => track.events)).filter(
      (e: CalendarEvent) => !(e.endTime <= event.startTime || e.startTime >= event.endTime)
    );
  }

  /**
   * Checks whether a given event is in a given timeframe
   *
   * @param {CalendarEvent} event Event to check for inclusion in a timeframe
   * @param {Timeframe} timeframe Size of a given timeframe
   * @param {moment.Moment} pointOfReference Reference point for the timeframe.
   *    Note that the timeframe does not start at this point but at a timeframes proper start,
   *    e.g. timeframe 'month' starts on the first of a month even if pointOfReference is the 21st.
   * @return {boolean} True if event is in the timeframe, else otherwise
   */
  private inTimeframe (
    event: CalendarEvent,
    timeframe: Timeframe = this.viewportTimeframe,
    pointOfReference: moment.Moment = this.selectedDay,
  ): boolean {
    const timeframeStart: moment.Moment = moment(pointOfReference).startOf(timeframe);
    const timeframeEnd: moment.Moment = moment(timeframeStart).add(1, timeframe);
    return event.startTime.isValid() &&
      event.endTime.isValid() &&
      !(event.endTime <= timeframeStart || event.startTime >= timeframeEnd);
  }
}
