import { NgModule, ApplicationRef } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';
import { MaterialModule } from '@angular/material';
import { removeNgStyles, createNewHosts, createInputTransfer } from '@angularclass/hmr';

import { provideAuth } from 'angular2-jwt';

/*
 * Platform and Environment providers/directives/pipes
 */
import { ENV_PROVIDERS } from './environment';
import { ROUTES } from './app.routes';
// App is our top level component
import { AppComponent } from './app.component';
import { APP_RESOLVER_PROVIDERS } from './app.resolver';
import { AppState, InternalStateType } from './app.service';

// Services
import {
  AuthService,
  ApiService,
  ApiMapperService,
  EventService,
  EventResolver,
  EventOfSpeakerResolver,
  PaperService,
  PaperByAuthorResolver,
  PersonService,
  PersonResolver,
  SessionService,
  SessionResolver,
} from './services';

// Components
import {
  CalendarComponent,
  EventListComponent,
  EventOverviewComponent,
  EventViewComponent,
  EventViewOverlayComponent,
  LoginComponent,
  MyScheduleComponent,
  NavigationComponent,
  NavigationUserComponent,
  NoContentComponent,
  PersonViewComponent,
  RegisterComponent,
  SessionViewComponent,
} from './components';

// Directives

// Pipes
import { EventFilterPipe } from './pipes';

// Application wide providers
const APP_PROVIDERS = [
  ...APP_RESOLVER_PROVIDERS,
  AppState,
];

type StoreType = {
  state: InternalStateType,
  restoreInputValues: () => void,
  disposeOldHosts: () => void
};

/**
 * `AppModule` is the main entry point into Angular2's bootstraping process
 */
@NgModule({
  bootstrap: [ AppComponent ],
  declarations: [
    AppComponent,
    CalendarComponent,
    EventListComponent,
    EventOverviewComponent,
    EventFilterPipe,
    EventViewComponent,
    EventViewOverlayComponent,
    MyScheduleComponent,
    NoContentComponent,
    LoginComponent,
    NavigationComponent,
    NavigationUserComponent,
    NoContentComponent,
    PersonViewComponent,
    RegisterComponent,
    SessionViewComponent,
  ],
  entryComponents: [
    EventViewOverlayComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    MaterialModule.forRoot(),
    ReactiveFormsModule,
    RouterModule.forRoot(ROUTES, { useHash: false }),
  ],
  providers: [ // expose our Services and Providers into Angular's dependency injection
    ENV_PROVIDERS,
    APP_PROVIDERS,
    provideAuth({
      headerName: 'x-access-token',
      noTokenScheme: true,
    }),
    AuthService,
    ApiService,
    ApiMapperService,
    EventService,
    EventResolver,
    EventOfSpeakerResolver,
    PaperService,
    PaperByAuthorResolver,
    PersonService,
    PersonResolver,
    SessionService,
    SessionResolver,
  ],
})
export class AppModule {
  constructor(public appRef: ApplicationRef, public appState: AppState) {}

  hmrOnInit(store: StoreType) {
    if (!store || !store.state) {
      return;
    }
    console.info('HMR store', JSON.stringify(store, null, 2));
    // set state
    this.appState._state = store.state;
    // set input values
    if ('restoreInputValues' in store) {
      let restoreInputValues = store.restoreInputValues;
      setTimeout(restoreInputValues);
    }

    this.appRef.tick();
    delete store.state;
    delete store.restoreInputValues;
  }

  hmrOnDestroy(store: StoreType) {
    const cmpLocation = this.appRef.components.map(cmp => cmp.location.nativeElement);
    // save state
    const state = this.appState._state;
    store.state = state;
    // recreate root elements
    store.disposeOldHosts = createNewHosts(cmpLocation);
    // save input values
    store.restoreInputValues  = createInputTransfer();
    // remove styles
    removeNgStyles();
  }

  hmrAfterDestroy(store: StoreType) {
    // display new elements
    store.disposeOldHosts();
    delete store.disposeOldHosts;
  }

}

