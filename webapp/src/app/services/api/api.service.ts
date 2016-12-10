import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs';
import { AuthHttp } from 'angular2-jwt';

import { ApiMapperService } from './api-mapper.service';

import { API_ROUTES } from './routes';

@Injectable()
export class ApiService {

  constructor (
    private http: Http,
    private authHttp: AuthHttp,
    private apiMapper: ApiMapperService,
  ) {}

  public createPaper (data: PaperCreationData): Observable<any> {
    return this.authHttp.post(API_ROUTES.papers.create, data)
      .map(res => res.json());
  }

}
