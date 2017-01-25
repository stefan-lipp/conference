import * as moment from 'moment';
import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { AuthHttp } from 'angular2-jwt';
import { Observable } from 'rxjs';

import { AuthService } from '../auth';
import { ApiMapperService } from './api-mapper.service';

// import { API_ROUTES } from './routes'; // TODO Currently unused import

@Injectable()
export class ApiService {

  constructor (
    private http: Http,
    private authHttp: AuthHttp,
    private apiMapper: ApiMapperService,
    private authService: AuthService,
  ) { }

  private get httpService (): Http | AuthHttp {
    if (this.authService.loggedIn) {
      return this.authHttp;
    } else {
      return this.http;
    }
  }

  /**
   * Gets App metadata from API
   * @TODO
   */
  public getMeta (): Observable<any> {
    return Observable.of({
      starts: moment('2016-12-20T00:00:00.000Z'),
      ends: moment('2016-12-24T00:00:00.000Z'),
      scheduled: true,
    });
  }

}
