import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';

import { DirectionsService } from './directions.service';
import { Room } from '../../models';

@Injectable()
export class DirectionsResolver implements Resolve<Room> {

  constructor (
    private directionsService: DirectionsService,
  ) {}

  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<Room> {
     return this.directionsService.getRoom(route.params['RoomId']);
  }

}
