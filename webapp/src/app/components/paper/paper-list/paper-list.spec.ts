import { inject, TestBed } from '@angular/core/testing';

import { paperListComponent } from './paper-list.component';
import { paperService } from '../../../services';

describe('papersComponent', () => {

  const paperServiceStub = new paperServiceStub();

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [
        paperListComponent,
        { provide: paperService, useValue: paperServiceStub },
      ],
    }).compileComponents();
  });

  it('should be defined',  inject([ paperListComponent ], (paperListComponent) => {
    expect(paperListComponent instanceof paperListComponent).toBe(true);
  }));

  it('should be initialized with no papers', inject([ paperListComponent ], (component) => {
    expect(component.papers).toEqual([ ]);
  }));

});
