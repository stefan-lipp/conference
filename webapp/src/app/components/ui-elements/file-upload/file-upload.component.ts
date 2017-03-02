import { Component } from '@angular/core';
/*import {
  Headers,
  RequestOptions,
} from '@angular/http';
*/

/** file-upload component  */
@Component({
  selector: 'upload-tool',
  templateUrl: './file-upload.template.html',
  styleUrls: [ './file-upload.style.scss' ],
})

export class FileUploadComponent {

private file: File;

  /**
   * Sets the file to the uploaded file
   * 
   * @param {any} event onchange event triggering this action
   */
  public fileChange (event: any): void {
    const fileList: FileList = event.target.files;
    if (fileList.length > 0) {
      this.file = fileList[0];
    }
  }


  /**
   * Submits the file and calls API
   */
  public submitFile (): void {
       /* build http RequestOptions

        const formData: FormData = new FormData();
        formData.append('uploadFile', file, file.name);
        const headers = new Headers();
        headers.append('Content-Type', 'multipart/form-data');
        headers.append('Accept', 'application/json');
        let options = new RequestOptions({ headers: headers });
        */

        /* create uploadService.ts

        this.http.post(`${this.apiEndPoint}`, formData, options)
            .map(res => res.json())
            .catch(error => Observable.throw(error))
            .subscribe(
                data => console.log('success'),
                error => console.log(error)
            )*/
  }
}
