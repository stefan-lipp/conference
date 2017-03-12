import { Component } from '@angular/core';
import { TrackService } from 'app/services';
@Component({
  selector: 'admin-overview',
  templateUrl: './adminOverview.template.html',
  styleUrls: [ './adminOverview.style.scss' ],
})
export class AdminOverviewComponent {


  /**
   * Constructor for the scheduler-ui component.
   */
  constructor (
    private trackService: TrackService,
  ) { }

  /**
   * schedule
   */
  public executeSchedule (): void {
    this.trackService.schedule()
      .subscribe(
        data => alert('schedule has been organized'),
        err => alert('unable to schedule'));
  }

}
