import {
  inject,
  TestBed,
} from '@angular/core/testing';

// Load the implementations that should be tested
import { AppComponent } from './app.component';
import { AppState } from './app.service';

describe('App', () => {
  // provide our implementations or mocks to the dependency injector
  beforeEach(() => TestBed.configureTestingModule({
    providers: [
      AppState,
      AppComponent,
    ]}));

    it('should be defined', inject([ AppComponent ], (app: AppComponent) => {
      expect(app instanceof AppComponent).toBe(true);
    }));

});
