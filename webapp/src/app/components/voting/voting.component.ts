import {
  Component,
  OnInit,
} from '@angular/core';

import { ConferenceEvent } from '../../models';
import { VotingService } from '../../services';

@Component({
  selector: 'conference-voting',
  templateUrl: './voting.template.html',
  styleUrls: [ './voting.style.scss' ],
})
export class VotingComponent implements OnInit {

  public events: ConferenceEvent[] = [ ];

  constructor(
    private votingService: VotingService,
  ) { }

  /**
   * @memberof OnInit
   */
  ngOnInit () {
    this.votingService.getEventsOrderedByVotes()
      .subscribe(events => this.events = events);
  }

}
