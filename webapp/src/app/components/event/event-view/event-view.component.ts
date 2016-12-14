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
  public showLocation: boolean = false;

  constructor (
    private route: ActivatedRoute,
  ) { }

  public ngOnInit (): void {
 /*   this.route.data.subscribe((data: { event: Event }) => {
      this.event = data.event;
    });*/
  }



 /** Methods called from the html template to perform animation
  * 
  *  attention: showPaperinfo and showLocationinfo are clones. 
  */
  public showPaperinfo (): void {
    if (this.showPaper){
      document.getElementById('paperinfo').classList.add('hide');
    } else {
      document.getElementById('paperinfo').classList.remove('hide');
    }
    this.showPaper = !this.showPaper;
  }

  public showLocationinfo (): void {
    if (this.showLocation){
      document.getElementById('locationinfo').classList.add('hide');
    } else {
      document.getElementById('locationinfo').classList.remove('hide');
    }
    this.showLocation = !this.showLocation
  }
}
