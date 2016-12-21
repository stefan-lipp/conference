import { Observable } from 'rxjs';

export class EventServiceStub {

  public findAll (): Observable<Event[]> {
    return Observable.of([]);
  }

}

export class AuthServiceStub {

  public register (
    registerData: { email: string, password: string, passwordConfirmation: string },
  ): Observable<any> {
    return Observable.of({ });
  }

}
