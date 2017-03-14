import { Injectable } from '@angular/core';
import {
  Resolve,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
} from '@angular/router';
import { Observable } from 'rxjs';

import { PaperService } from '../paper';
import { Paper } from '../../models';

/**
 * @export
 * @class PaperByAuthorResolver
 * @implements {Resolve<Paper[]>}
 */
@Injectable()
export class PaperByAuthorResolver implements Resolve<Paper[]> {

  constructor (
    private paperService: PaperService,
  ) { }

  /**
   * @param {ActivatedRouteSnapshot} route
   * @param {RouterStateSnapshot} state
   * @returns {Observable<Paper[]>}
   *
   * @memberOf Resolve
   */
  public resolve (
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot,
  ): Observable<Paper[]> {
     return this.paperService.getPaperByAuthor(route.params['personId']);
  }

}
