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
import { TrackService } from 'app/services';
import { Track } from 'app/models';

@Component({
  selector: 'conference-schedule-admin',
  templateUrl: './schedule-editor.template.html',
  styleUrls: [ './schedule-editor.style.scss' ],
})
export class ScheduleEditorComponent implements OnInit {

  public selectedTrack: Track = null;

  public tracks: Track[] = [ ];

  @ViewChild(CalendarComponent)
  public calendar: CalendarComponent;

  private tmpEvent: any = { };

  private ghost: HTMLDivElement = null;


  constructor (
    private trackService: TrackService,
  ) { }

  public ngOnInit () {
    this.trackService.getAll().subscribe((tracks: Track[]) => this.tracks = tracks);
  }

  public get calendarTracks (): CalendarTrack[] {
    return this.tracks.map(track => {
      return <CalendarTrack> {
        color: track.color,
        backgroundColor: track.backgroundColor,
        isDisplayed: true,
        events: (track.slots || [ ]).map(slot => {
          return <CalendarEvent> {
            title: track.name,
            startTime: slot.start,
            endTime: slot.end,
          };
        }),
      };
    });
  }

  public addTrack (): void {
    const newTrack: Track = <Track> {
      name: `Track ${this.tracks.length + 1}`,
      backgroundColor: '#dddddd',
      color: `#333333`,
      kind: 'ANY',
      slots: [ ],
    };

    this.trackService.create(newTrack)
      .subscribe((track: Track) => {
        this.tracks.push(track);
        this.selectedTrack = track;
      });
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
