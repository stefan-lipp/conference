import {
  inject,
  TestBed,
} from '@angular/core/testing';
import { HttpModule } from '@angular/http';

import { HomeComponent } from './home.component';
import { ApiService } from '../../services/api';

describe('HomeComponent', () => {

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [
        ApiService,
        HomeComponent,
      ],
      imports: [
        HttpModule,
      ],
    }).compileComponents();
  });

  it('should be defined',  inject([ HomeComponent ], (home: HomeComponent) => {
    expect(home instanceof HomeComponent).toBe(true);
  }));

  it('should push an item to completed items when completing it',
  inject([ HomeComponent ], (home) => {
    home.completedItems = [ 'entry1' ];
    home.complete('entry2');
    expect(home.completedItems).toEqual([ 'entry1', 'entry2' ]);
    home.complete('entry3');
    expect(home.completedItems).toEqual([ 'entry1', 'entry2', 'entry3' ]);
  }));

  it('should push an item to items list when marking it as incomplete',
  inject([ HomeComponent ], (home) => {
    home.items = [ ];
    home.incomplete('entry1');
    expect(home.items).toEqual([ 'entry1' ]);
    home.incomplete('entry2');
    expect(home.items).toEqual([ 'entry1', 'entry2' ]);
  }));

  it('should toggle the completed section visibility',
  inject([ HomeComponent ], (home) => {
    home.showCompletedSection = false;
    home.toggleShowCompletedSection();
    expect(home.showCompletedSection).toBe(true);
    home.toggleShowCompletedSection();
    expect(home.showCompletedSection).toBe(false);
  }));

});
