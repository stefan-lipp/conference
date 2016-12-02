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

  it('should be defined',  inject([ EventsComponent ], (eventsComponent) => {
    expect(eventsComponent instanceof EventsComponent).toBe(true);
  }));

  it('should be initialized with no events', inject([ EventsComponent ], (component) => {
    expect(component.events).toEqual([ ]);
  }));

});
