import {
  Component,
  Input,
} from '@angular/core';

@Component({
  selector: 'conference-track-editor',
  templateUrl: './track-editor.template.html',
  styleUrls: [ './track-editor.style.scss' ],
})
export class TrackEditorComponent {

  @Input()
  public track;

}
