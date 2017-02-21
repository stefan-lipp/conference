import * as moment from 'moment';
import 'moment-timezone';

import {
  Component,
  OnInit,
  ViewChild,
} from '@angular/core';

import {
  CalendarComponent,
  CalendarEvent,
  CalendarTrack,
} from '../../ui-elements';
import {
  TrackService,
  SessionService,
} from 'app/services';
import {
  Track,
  ConferenceSession,
} from 'app/models';

@Component({
  selector: 'conference-schedule-admin',
  templateUrl: './schedule-editor.template.html',
  styleUrls: [ './schedule-editor.style.scss' ],
})
export class ScheduleEditorComponent implements OnInit {

  public selectedTrack: Track = null;

  public tracks: Track[] = [ ];

  public sessions: ConferenceSession[] = [ ];

  @ViewChild(CalendarComponent)
  public calendar: CalendarComponent;

  private tmpEvent: any = { };

  private ghost: HTMLDivElement = null;


  constructor (
    private trackService: TrackService,
    private sessionService: SessionService,
  ) { }

  public ngOnInit () {
    this.trackService.getAll().subscribe((tracks: Track[]) => this.tracks = tracks);
    this.sessionService.getAll().subscribe(
      (sessions: ConferenceSession[]) => this.sessions = sessions
    );
  }

  public get calendarTracks (): CalendarTrack[] {
    return this.sessions.map(s => {
      return <CalendarTrack> {
        color: s.track.color,
        backgroundColor: s.track.backgroundColor,
        isDisplayed: true,
        events: [ <CalendarEvent> {
            title: s.track.name,
            startTime: s.startTime,
            endTime: s.endTime,
          } ],
        };
    });
  }

  public addTrack (): void {
    const newTrack: Track = <Track> {
      name: `Track ${this.tracks.length + 1}`,
      backgroundColor: '#dddddd',
      color: `#333333`,
      kind: `Track ${this.tracks.length + 1}`,
    };

    this.trackService.create(newTrack)
      .subscribe((track: Track) => {
        this.tracks.push(track);
        this.selectedTrack = track;
      });
  }

  public addSession ( name: string, start: string, end: string ): boolean {
    try {
      let startTime: moment.Moment = this.calendar.selectedDay.clone().startOf('day');
      startTime = startTime.add(moment(start, 'HH:mm').hour(), 'hour');
      startTime = startTime.add(moment(start, 'HH:mm').minute(), 'minute');
      let endTime: moment.Moment = this.calendar.selectedDay.clone().startOf('day');
      endTime = endTime.add(moment(end, 'HH:mm').hour(), 'hour');
      endTime = endTime.add(moment(end, 'HH:mm').minute(), 'minute');

      if (startTime >= endTime) {
        return false;
      }
      const newSession: ConferenceSession = <ConferenceSession> {
        id: null,
        name: name,
        events: [],
        track: this.selectedTrack,
        startTime: startTime,
        endTime: endTime,
      };
      this.sessionService.create(newSession)
        .subscribe((session: ConferenceSession) => {
          this.sessions.push(session);
          this.sessions = this.sessions.slice();
        });
    } catch (e) {
      return false;
    }
    return true;
  }

  public selectTrack (track: Track): void {
    this.selectedTrack = track;
  }

  public deleteTrack (track: Track): void {
    const index = this.tracks.indexOf(track);

    if (index < 0) {
      return;
    }

    if (this.selectedTrack === track) {
      this.selectedTrack = null;
    }

    this.trackService.delete(track)
      .subscribe(() => this.tracks.splice(index, 1));
  }

  public dragStartHandler (event: MouseEvent): void {
    if (this.selectedTrack) {
      const calendar = document.querySelector('conference-calendar .day-events');
      const parentHeight = calendar.getBoundingClientRect().height;
      const cursorPos = Math.round(event.offsetY / parentHeight * 100);

      this.tmpEvent.origin = cursorPos;
      this.tmpEvent.start = cursorPos;
      this.tmpEvent.end = cursorPos;

      this.ghost = this.ghost || document.createElement('div');
      this.ghost.classList.add('ghost-event');

      calendar.appendChild(this.ghost);

      this.ghost.style.backgroundColor = this.selectedTrack.backgroundColor;
      this.ghost.style.color = this.selectedTrack.color;

      this.ghost.style.top = this.tmpEvent.start + '%';

      const redrawGhost = () => {
        if (this.ghost) {
          this.ghost.style.top = this.tmpEvent.start + '%';
          this.ghost.style.bottom = (100 - this.tmpEvent.end) + '%';
          window.requestAnimationFrame(redrawGhost);
        }
      };

      window.requestAnimationFrame(redrawGhost);
    }
  }

  public dragHandler (event: MouseEvent): void {
    if (this.ghost && this.ghost.parentElement) {
      const parentHeight = this.ghost.parentElement.getBoundingClientRect().height;
      const cursorPos = Math.round(event.offsetY / parentHeight * 100);

      this.tmpEvent.start = Math.min(cursorPos, this.tmpEvent.origin);
      this.tmpEvent.end = Math.max(cursorPos, this.tmpEvent.origin);
    }
  }

  public dragEndHandler (event: MouseEvent): void {
    if (this.selectedTrack && this.ghost) {
      const calendar = document.querySelector('conference-calendar .day-events');
      calendar.removeChild(this.ghost);

      // const startTime = this.calendar.selectedDay.startOf('day')
      //   .add(this.tmpEvent.start / 100 * 24 * 60, 'minutes');
      // const endTime = this.calendar.selectedDay.startOf('day')
      //   .add(this.tmpEvent.end / 100 * 24 * 60, 'minutes');
      /*
      this.selectedTrack.slots.push({
        start: startTime,
        end: endTime,
      });
      */
    }
  }
}
