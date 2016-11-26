import { inject, TestBed } from '@angular/core/testing';

import { TalksComponent } from './talks.component';

describe('TalksComponent', () => {

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ TalksComponent ],
    }).compileComponents();
  });

  it('should be defined',  inject([ TalksComponent ], (talks: TalksComponent) => {
    expect(talks instanceof TalksComponent).toBe(true);
  }));

});
