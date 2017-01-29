import * as moment from 'moment';

import {
  Component,
  Input,
} from '@angular/core';
import { Router } from '@angular/router';

import { MdDialog } from '@angular/material';

import { Paper } from '../../../models/paper.model';
import { AuthService } from '../../../services';

@Component({
  selector: 'conference-paper-list',
  templateUrl: 'paper-list.template.html',
  styleUrls: [ 'paper-list.style.scss' ],
})
export class PaperListComponent  {

  @Input()
  public papers: Paper[] = [ ];

  constructor (
    private dialog: MdDialog,
    private router: Router,
    public authService: AuthService,
  ) { }

  public formatTime (time: moment.Moment): string {
    return time.format('MMM Do, HH:mm');
  }
}
