import {
  Component,
  OnInit,
  Input,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { Event } from '../../../models';

@Component({
  selector: 'conference-event-view',
  templateUrl: './event-view.template.html',
  styleUrls: [ './event-view.styles.scss' ],
})
export class EventViewComponent implements OnInit {

  @Input()
  public event: Event;

  public showPaper: boolean = false;

  constructor (
    private route: ActivatedRoute,
  ) { }

  public ngOnInit (): void {
 /*   this.route.data.subscribe((data: { event: Event }) => {
      this.event = data.event;
    });*/
  }

  public showPaperinfo (): void {
    this.showPaper = !this.showPaper;
  }
}
