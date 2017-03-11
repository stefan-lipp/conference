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

  /**
   *
   * @param event
   */
  public voteFor (event: ConferenceEvent): void {
    this.votingService.voteForEventId(event.id).subscribe(res =>
      event.voted = true
    );
  }

  /**
   *
   * @param event
   */
  public removeVoteFor (event: ConferenceEvent): void {
    this.votingService.removeVoteForEventId(event.id).subscribe(res =>
      event.voted = false
    );
  }

}
