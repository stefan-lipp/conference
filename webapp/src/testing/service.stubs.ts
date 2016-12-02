import { Observable } from 'rxjs';

export class EventServiceStub {

  public findAll (): Observable<Event[]> {
    return Observable.of([]);
  }

}
