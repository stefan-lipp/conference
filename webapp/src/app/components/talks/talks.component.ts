import { Component, OnInit } from '@angular/core';

import { UUID } from 'angular2-uuid';

import { Talk } from '../../models/talk.model';
import { TalkService } from '../../services/talks/talk.service';

@Component({
  selector: 'conference-talks',
  templateUrl: 'talks.template.html',
  styleUrls: [ 'talks.style.scss' ],
  providers: [ TalkService ],
})
export class TalksComponent implements OnInit {

  /**
   * Talks that are given at the conference.
   */
  public talks: Talk[];


  /**
   * Constructor for the talk component.
   */
  constructor (private talkService: TalkService) { }


  /**
   * Finds all talks of the conference on initialization
   * of the talk component.
   *
   * @memberof OnInit
   */
  public ngOnInit() {
    this.talkService.findAll().then(talks => this.talks = talks);
  }

  /**
   * Adds a new talk to the conference.
   */
  public addTalk() {
    let talk: Talk = {
      id: UUID.UUID(),
      title: 'A new talk',
      abstract: 'Abstract of the new talk',
      speakers: [ 'Speaker of the new talk' ],
      numberOfLikes: 0,
    };

    this.talkService.save(talk);
  }

 }
