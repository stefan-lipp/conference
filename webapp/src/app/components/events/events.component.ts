import { Component, OnInit } from '@angular/core';

import { Event } from '../../models/event.model';
import { EventService } from '../../services/';

@Component({
  selector: 'conference-events',
  templateUrl: 'events.template.html',
  styleUrls: [ 'events.style.scss' ],
  providers: [ EventService ],
})
export class EventsComponent implements OnInit {

  /**
   * Events that take place at the conference.
   */
  public events: Event[] = [ ];


  /**
   * Constructor for the events component.
   *
   * @param {EventService} An event service.
   */
  constructor (private eventService: EventService) { }


  /**
   * Finds all events of the conference on initialization
   * of the event component.
   *
   * @memberof OnInit
   */
  public ngOnInit () {
    this.eventService.findAll().subscribe(events => this.events = events);
  }

  /**
   * Adds a new event to the conference.
   *
   * @param {Event} The event to add to the conference.
   * @return void
   */
  public addEvent (event: Event): void {
    this.eventService.save(event);
  }

  /**
   * Favours an event for the current user.
   *
   * @param {Event} The event to favour.
   */
  public favourEvent (event: Event) {
    event.favoured = true;
    this.eventService.updateFavourStatus(event);
  }

  /**
   * Marks an event as not favoured.
   *
   * @param {Event} The event to mark as not favoured.
   */
  public discardFavour(event: Event) {
    event.favoured = false;
    this.eventService.updateFavourStatus(event);
  }

 }
