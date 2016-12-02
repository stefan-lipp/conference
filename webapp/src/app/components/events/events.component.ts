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
  public events: Event[];


  /**
   * Constructor for the events component.
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
   */
  public addEvent (event: Event) {
    this.eventService.save(event);
  }

 }
