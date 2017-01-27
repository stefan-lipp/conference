import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';

import { PaperService } from '../paper';
import { Paper } from '../../models';

@Injectable()
export class PaperByAuthorResolver implements Resolve<Paper[]> {

  constructor (
    private paperService: PaperService,
  ) {}

  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<Paper[]> {
     return this.paperService.getPaperByAuthor(route.params['personId']);
  }

}