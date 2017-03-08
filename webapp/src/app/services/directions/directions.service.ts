import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { AuthHttp } from 'angular2-jwt';
import { Observable } from 'rxjs';

import {
  Room,
  ApiRoom,
} from '../../models';
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
    return Observable.of({
      id: 1,
      name: 'Pearl 1',
      map: 'pearl1',
    });

    /*return this.authHttp.get(API_ROUTES.room.replace(':roomId', roomId.toString(10)))
      .map(res => res.json())
      .map(this.roomApiToLocal);*/
  }


  /**
   * Transforms API representation of a conference session to local representation.
   *
   * @param {ApiConferenceSession} data API representation.
   * @return {ConferenceEvent} Local representation of the conference session.
   */
  public roomApiToLocal (data: ApiRoom): Room {
    return Room.fromAPI(data);
  }
}
