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
import {
  EventService,
  AuthService,
} from './../../../services';

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
    private authService: AuthService,
    private eventService: EventService,
  ) { }

  /**
   * Gets the comments of the event
   *
   * @memberof OnInit
   */
  public ngOnInit () {
    this.eventService.getComments(this.event.id)
      .subscribe(comments => this.comments = comments);
  }

  /**
   * Form submit handler
   * Adds comment + user data and calls API to persist changes.
   *
   * @memberOf QuestionToolComponent
   */
  public onSubmit (): void {
    if (this.newComment && this.authService.loggedIn) {
      this.eventService.addComment(this.event.id, this.newComment)
        .subscribe(_ => {
          this.comments.push(new Comment(
            moment(),
            new Person(this.authService.userId, this.authService.userName, ''),
            this.newComment,
          ));
          this.newComment = '';
        });
    }
  }
}
