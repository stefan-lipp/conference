import { Component } from '@angular/core';

@Component({
  selector: 'conference-schedule-admin',
  templateUrl: './schedule-editor.template.html',
  styleUrls: [ './schedule-editor.style.scss' ],
})
export class ScheduleEditorComponent {

  public selectedTrack = null;

  public tracks = [ {
    name: 'Keynotes',
    backgroundColor: '#FF0000',
    color: '#333333',
  }, {
    name: 'Breaks',
    backgroundColor: '#888888',
    color: '#ffffff',
  } ];

  public addTrack (): void {
    const newTrack = {
      name: `Track ${this.tracks.length + 1}`,
      backgroundColor: '#dddddd',
      color: `#333333`,
    };

    this.tracks.push(newTrack);
    this.selectedTrack = newTrack;
  }

  public selectTrack (track): void {
    this.selectedTrack = track;
  }

  public deleteTrack (track): void {
    const index = this.tracks.indexOf(track);
    if (!index) {
      return;
    }
    this.tracks.splice(index, 1);
  }
}
