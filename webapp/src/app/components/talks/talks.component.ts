import { Component } from '@angular/core';

import { Talk } from '../../models/talk-model';

@Component({
  selector: 'conference-talks',
  templateUrl: 'talks.template.html',
  styleUrls: [ 'talks.style.scss' ],
})
export class TalksComponent {

  public talks: Talk[] = [
    { title: 'Test Talk 1', abstract: 'A description follows...', speakers: [ 'Test Speaker' ], numberOfLikes: 43},
    { title: 'Test Talk 2', abstract: 'A description follows...', speakers: [ 'Test Speaker' ], numberOfLikes: 37},
    { title: 'Test Talk 3', abstract: 'A description follows...', speakers: [ 'Test Speaker' ], numberOfLikes: 12},
    { title: 'Test Talk 4', abstract: 'A description follows...', speakers: [ 'Test Speaker' ], numberOfLikes: 3},
    { title: 'Test Talk 5', abstract: 'A description follows...', speakers: [ 'Test Speaker' ], numberOfLikes: 72},
    { title: 'Test Talk 6', abstract: 'A description follows...', speakers: [ 'Test Speaker' ], numberOfLikes: 8},
    { title: 'Test Talk 7', abstract: 'A description follows...', speakers: [ 'Test Speaker' ], numberOfLikes: 48},
  ].sort((talk1, talk2) => talk2.numberOfLikes - talk1.numberOfLikes);

 }