import * as moment from 'moment';

import {
  Component,
  Input,
  OnInit,
} from '@angular/core';

import {
  Comment,
  ConferenceEvent,
  Person,
} from './../../../models';
import { EventService } from './../../../services';

/** question-tool component  */
@Component({
  selector: 'question-tool',
  templateUrl: './question-tool.template.html',
  styleUrls: [ './question-tool.style.scss' ],
})
export class QuestionToolComponent implements OnInit{

  @Input()
  public event: ConferenceEvent;
  public comments: Comment[];
  private newComment: string;

  constructor (
    private eventService: EventService,
  )
  {  }

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
   * Method called when submit comment button is clicked.
   * Adds comment + user data and calls api in order to persist changes.
   */
  public onSubmit (): void {
    if (this.newComment) {
      this.eventService.addComment(this.event.id, this.newComment)
        .subscribe(_ => {
          const newEntry: Comment = new Comment(
            moment(),
            new Person(null, 'You', ''),
            this.newComment,
          );
          this.comments.push(newEntry);
          this.newComment = '';
        });
    }
  }
}
