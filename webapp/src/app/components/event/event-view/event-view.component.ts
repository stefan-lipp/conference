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

  constructor (
    private route: ActivatedRoute,
  ) { }

  public ngOnInit (): void {
    console.info(this.route);
    this.route.data.subscribe((data: { event: Event }) => {
      this.event = data.event;
    });
  }
}
