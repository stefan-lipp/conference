import {
  Component,
  Input,
} from '@angular/core';
import * as moment from 'moment';

import { ConferenceEvent } from './../../../models';
import {
  PersonService,
  ApiService,
 } from './../../../services';

/** question-tool component  */
@Component({
  selector: 'question-tool',
  templateUrl: './question-tool.template.html',
  styleUrls: [ './question-tool.style.scss' ],
})
export class QeustionToolComponent {

  @Input()
  public event: ConferenceEvent;
  // TOOD replace by api call to retrieve comments
  public comments: [string, string, string][] = [
    ['Michael Schreier', 'Wed Feb 08 2017 14:06:30 GMT+0100', 'I do not understand this'],
    ['Stefan Cimander', 'Wed Feb 08 2017 14:08:30 GMT+0100', 'Have you tried hyper?'],
  ];
  private username: string;
  private newComment: string;

  constructor (
    private personService: PersonService,
    private apiService: ApiService,
  )
  {
    this.personService.getLoggedInPerson().subscribe(person =>
      this.username = person.name);
  }

  public onSubmit (): void {
    if (this.newComment) {
      const entry: [string, string, string] = [
        this.username,
        moment().toString(),
        this.newComment,
      ];
      // TODO api call ().subscribe(_ => push to local comments data)
      this.comments.push(entry);
      this.newComment = '';
    }
  }

}
