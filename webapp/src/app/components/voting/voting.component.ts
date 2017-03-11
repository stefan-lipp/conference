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
    this.reloadVotings();
  }

  /**
   * Adds a vote to a given event.
   *
   * @param {ConferenceEvent} event The event to add a vote to.
   */
  public voteFor (event: ConferenceEvent): void {
    this.votingService.voteForEventId(event.id).subscribe(res =>
      this.reloadVotings()
    );
  }

  /**
   * Removes a voting from the given event.
   *
   * @param {ConferenceEvent} event The event to remove a vote from.
   */
  public removeVoteFor (event: ConferenceEvent): void {
    this.votingService.removeVoteForEventId(event.id).subscribe(res =>
      this.reloadVotings()
    );
  }

  private reloadVotings () {
    this.votingService.getEventsOrderedByVotes()
      .subscribe(events => this.events = events);
  }

}
