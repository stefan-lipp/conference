import * as _ from 'lodash';
import {
  Component,
  Input,
} from '@angular/core';

import { TrackService } from 'app/services';
import { Track } from 'app/models';

@Component({
  selector: 'conference-track-editor',
  templateUrl: './track-editor.template.html',
  styleUrls: [ './track-editor.style.scss' ],
})
export class TrackEditorComponent {

  @Input()
  public track: Track;

  constructor (
    private trackService: TrackService,
  ) { }

  public update () {
    this.trackService.update(this.track)
      .subscribe(track => _.merge(this.track, track));
  }

}
