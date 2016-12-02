import { inject, TestBed } from '@angular/core/testing';

import { EventsComponent } from './events.component';

import { EventService } from '../../services';
import { EventServiceStub } from '../../../testing';

describe('EventsComponent', () => {

  const eventServiceStub = new EventServiceStub();

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [
        EventsComponent,
        { provide: EventService, useValue: eventServiceStub },
      ],
    }).compileComponents();
  });

  it('should be defined',  inject([ EventsComponent ], (eventsComponent: EventsComponent) => {
    expect(eventsComponent instanceof EventsComponent).toBe(true);
  }));

});
