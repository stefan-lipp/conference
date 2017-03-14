import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { AuthHttp } from 'angular2-jwt';
import { Observable } from 'rxjs';

import { Room } from '../../models';
import { API_ROUTES } from '../api/routes';

@Injectable()
export class DirectionsService {

  constructor (
    private http: Http,
    private authHttp: AuthHttp,
  ) {}

  /**
   * Makes api call to get the Room of an id
   */
  public getRoom (roomId: number): Observable<Room> {
    return this.http.get(API_ROUTES.room.replace(':roomId', roomId.toString(10)))
      .map(res => <Room> res.json());
  }
}
