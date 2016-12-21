import { inject, TestBed } from '@angular/core/testing';

import { EventListComponent } from './event-list.component';
import { EventService } from '../../../services';
import { EventServiceStub } from '../../../../testing';

describe('EventsComponent', () => {

  const eventServiceStub = new EventServiceStub();

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [
        EventListComponent,
        { provide: EventService, useValue: eventServiceStub },
      ],
    }).compileComponents();
  });

  it('should be defined',  inject([ EventListComponent ], (eventListComponent) => {
    expect(eventListComponent instanceof EventListComponent).toBe(true);
  }));

  it('should be initialized with no events', inject([ EventListComponent ], (component) => {
    expect(component.events).toEqual([ ]);
  }));

});
