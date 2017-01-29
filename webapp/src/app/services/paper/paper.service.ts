import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { ApiMapperService } from '../api';
import { AuthService } from '../auth';
import { Paper } from '../../models';

@Injectable()
export class PaperService {

  /**
   * Constructor for the paper service.
   */
  constructor(
    private apiMapperService: ApiMapperService,
    private authService: AuthService,
    private authHttp: AuthHttp,
    private http: Http,
  ) {  }

  private get httpService (): Http | AuthHttp {
    if (this.authService.loggedIn) {
      return this.authHttp;
    } else {
      return this.http;
    }
  }

  /**
   * Returns a paper of the conference
   *
   * @return {Observable<Paper[]>} An observable containing the paper
   */
  public getAll (): Observable<Paper[]> {
    return this.httpService.get(API_ROUTES.paper.all)
      .map(res => res.json())
      .map(list => list.map(Paper.fromAPI));
  }

  /**
   * Returns a paper of the conference
   *
   * @return {Observable<Paper[]>} An observable containing the paper
   */
  public getPaper (paperId: number): Observable<Paper> {
    return this.httpService.get(API_ROUTES.paper.single.replace(':paperId', paperId.toString(10)))
      .map(res => res.json())
      .map(Paper.fromAPI);
  }

  /**
   * Returns a paper by id
   *
   * @return {Observable<Paper[]>} An observable containing the paper
   */
  public getPaperByAuthor (personId: string): Observable<Paper[]> {
    return this.httpService.get(API_ROUTES.paper.byAuthor.replace(':personId', personId))
      .map(res => res.json())
      .map(list => list.map(Paper.fromAPI));
  }
}
