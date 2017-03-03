import {
  Component,
  Input,
} from '@angular/core';

import { ConferenceEvent } from './../../../models';
import { EventService } from './../../../services';

/** file-upload component  */
@Component({
  selector: 'upload-tool',
  templateUrl: './file-upload.template.html',
  styleUrls: [ './file-upload.style.scss' ],
})

export class FileUploadComponent {


  @Input()
  public event: ConferenceEvent;
  private info: String = '';
  private file: File;

  /**
   * Constructor for the FileUploadComponent.
   */
  constructor(
    private eventService: EventService,
  ) { }

  /**
   * Sets the file to the uploaded file
   * 
   * @param {any} event onchange event triggering this action
   */
  public fileChange (event: any): void {
    const fileList: FileList = event.target.files;
    if (fileList.length > 0) {
      const newFile = fileList[0];
      if (newFile.type === 'application/pdf') {
        this.file = fileList[0];
        this.info = '';
      } else {
        this.file = null;
        this.info = 'Please restrict yourself to .pdf files';
      }
    }

  }


  /**
   * Submits the file and calls API
   */
  public submitFile (): void {

    this.info = 'successfully uploaded';
/*
    this.eventService.uploadFile(this.event.id, this.file).subscribe(
      data => this.info = 'successfully uploaded',
      error => this.info = error.toString(),
    );*/
  }


}
