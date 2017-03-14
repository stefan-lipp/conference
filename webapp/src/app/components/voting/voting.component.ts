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

  /**
   * Current filter query for filtering the list of events
   *
   * @type {string}
   * @memberOf VotingComponent
   */
  public filterQuery: string = '';

  /**
   * Currently filtered for events with their respective rank/position.
   * Does not auto-update when filterQuery is changed. Call applyFilter to do that.
   *
   * @see applyFilter
   *
   * @private
   * @type {[ number, ConferenceEvent ][]}
   * @memberOf VotingComponent
   */
  private selectedEventsWithPosition: [ number, ConferenceEvent ][] = [ ];

  /**
   * All votable events
   *
   * @private
   * @type {ConferenceEvent[]}
   * @memberOf VotingComponent
   */
  private allEvents: ConferenceEvent[] = [ ];

  constructor(
    private votingService: VotingService,
  ) { }

  /**
   * All currently filtered for votable events paired with their rank/position
   *
   * @readonly
   * @type {[ number, ConferenceEvent ][]}
   * @memberOf VotingComponent
   */
  public get eventsWithPosition (): [ number, ConferenceEvent ][] {
    return this.selectedEventsWithPosition;
  }

  /**
   * @memberOf OnInit
   */
  public ngOnInit () {
    this.reloadVotings();
  }

  /**
   * Adds a vote to a given event.
   *
   * @param {ConferenceEvent} event The event to add a vote to.
   *
   * @memberOf VotingComponent
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
   *
   * @memberOf VotingComponent
   */
  public removeVoteFor (event: ConferenceEvent): void {
    this.votingService.removeVoteForEventId(event.id).subscribe(res =>
      this.reloadVotings()
    );
  }

  /**
   * Applies the selected filter to show only papers that are queries for
   *
   * @memberOf VotingComponent
   */
  public applyFilter (): void {
    if (this.filterQuery) {
      const lowercaseQuery = this.filterQuery.toLowerCase();
      this.selectedEventsWithPosition = this.allEvents
        .map((event, index) => <[ number, ConferenceEvent ]> [ index + 1, event ])
        .filter((pair: [ number, ConferenceEvent ]) =>
          pair[1].title.toLowerCase().includes(lowercaseQuery) ||
          pair[1].speakers.some(p => p.name.toLowerCase().includes(lowercaseQuery)) ||
          (pair[1].paper && pair[1].paper.authors
            .some(a => a.name.toLowerCase().includes(lowercaseQuery)))
        );
    } else {
      this.selectedEventsWithPosition = this.allEvents.map((event, index) =>
        <[ number, ConferenceEvent ]> [ index + 1, event ]
      );
    }
  }

  /**
   * Refreshes the displayed data from the API
   *
   * @private
   *
   * @memberOf VotingComponent
   */
  private reloadVotings (): void {
    this.votingService.getEventsOrderedByVotes()
      .subscribe(events => {
        this.allEvents = events;
        this.applyFilter();
      });
  }

}
