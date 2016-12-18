import {
  Component,
  Input,
  ElementRef,
} from '@angular/core';

export interface CalendarEvent {
  title: string;
  startTime: Date;
  endTime: Date;
}

export interface CalendarTrack {
  color: string;
  backgroundColor: string;
  display: boolean;
  events: CalendarEvent[];
}

@Component({
  selector: 'conference-calendar',
  templateUrl: './calendar.template.html',
  styleUrls: [ './calendar.style.scss' ],
})
export class CalendarComponent {

  @Input()
  public tracks: CalendarTrack[] = [ {
    color: '#fff',
    backgroundColor: '#03a9f4',
    display: true,
    events: [
      {
        title: 'event1',
        startTime: new Date('Decenver 24, 2016 10:00:00'),
        endTime: new Date('Decenver 24, 2016 12:00:00'),
      },
      {
        title: 'event2',
        startTime: new Date('Decenver 24, 2016 8:00:00'),
        endTime: new Date('Decenver 24, 2016 9:00:00'),
      },
    ],
  }, {
    color: '#fff',
    backgroundColor: '#019440',
    display: true,
    events: [
      {
        title: 'event3',
        startTime: new Date('Decenver 24, 2016 9:00:00'),
        endTime: new Date('Decenver 24, 2016 11:00:00'),
      },
    ],
  } ];

  constructor (
    private elem: ElementRef,
  ) {
    window.setTimeout(() => {
      const currentTimeIndicator: HTMLElement =
        this.elem.nativeElement.querySelector('.current-time');

      if (currentTimeIndicator) {
        currentTimeIndicator.scrollIntoView();
      }
    });
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
  public timeToPercentage (date: Date = new Date()): number {
    const hours = date.getHours();
    const minutes = date.getMinutes();

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
}
