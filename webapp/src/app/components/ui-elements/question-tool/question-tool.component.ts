import {
  Component,
  Input,
  OnInit,
} from '@angular/core';

import {
  ConferenceEvent,
  Comment,
} from './../../../models';
import {
  PersonService,
  EventService,
 } from './../../../services';

/** question-tool component  */
@Component({
  selector: 'question-tool',
  templateUrl: './question-tool.template.html',
  styleUrls: [ './question-tool.style.scss' ],
})
export class QeustionToolComponent implements OnInit{

  @Input()
  public event: ConferenceEvent;
  public comments: Comment[];
  private username: string;
  private newComment: string;

  constructor (
    private personService: PersonService,
    private eventService: EventService,
  )
  {
    this.personService.getLoggedInPerson().subscribe(person =>
      this.username = person.name);
  }

  /**
   * Gets the comments of the event
   *
   * @memberof OnInit
   */
  public ngOnInit () {
    this.eventService.getComments(this.event.id).subscribe(comments =>
      this.comments = comments);
  }

 /**
  * method called when submit comment button is clicked
  * adds comment + user data and calls api in order to persist changes
  */
  public onSubmit (): void {
    if (this.newComment) {
      this.eventService.addComment(this.event.id, this.username, this.newComment)
        .subscribe(time => {
          const newEntry: Comment = {
            timestamp: time,
            name: this.username,
            content: this.newComment,
          };
        this.comments.push(newEntry);
        this.newComment = '';
      });
    }
  }
}
