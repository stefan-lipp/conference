import {
  Component,
  Input,
} from '@angular/core';

import { ConferenceEvent } from '../../../models';
import { EventService } from '../../../services';

@Component({
  selector: 'event-file-upload',
  templateUrl: './event-file-upload.template.html',
  styleUrls: [ './event-file-upload.style.scss' ],
})
export class EventFileUploadComponent {

  @Input()
  public event: ConferenceEvent;

  private info: string = '';

  private file: File;

  private uploading: boolean = false;

  constructor(
    private eventService: EventService,
  ) { }

  /**
   * Sets the file to the uploaded file
   *
   * @param {any} event onchange event triggering this action
   *
   * @memberOf EventFileUploadComponent
   */
  public updateFile (event: any): void {
    const fileList: FileList = event.target.files;

    if (fileList.length > 0) {
      const newFile = fileList[0];
      if (newFile.type === 'application/pdf') {
        this.file = newFile;
        this.info = '';
      } else {
        this.file = null;
        this.info = 'Please restrict yourself to .pdf files';
      }
    }

  }

  /**
   * Submits the file by calling the API
   *
   * @memberOf EventFileUploadComponent
   */
  public submitFile (): void {
    this.uploading = true;
    this.eventService.uploadFile(this.event.id, this.file).subscribe(
      data => {
        this.info = 'Successfully uploaded';
        this.uploading = false;
      },
      error => {
        this.info = error.toString();
        this.uploading = false;
      },
    );
  }
}
