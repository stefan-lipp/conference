import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import { Router, UrlTree, NavigationExtras } from '@angular/router';
import { Observable } from 'rxjs';
import { tokenNotExpired, AuthHttp, AuthConfigConsts, JwtHelper } from 'angular2-jwt';

import { API_ROUTES } from '../api/routes';
import { ApiMapperService } from '../api/api-mapper.service';

@Injectable()
export class AuthService {

  /**
   * Checks a given response for a new token and updates.
   *
   * @param {Response} res Response
   * @return {Response} unchanged response
   */
  public static refreshToken (res: Response): Response {
    try {
      const json = res.json();
      if (json.token && !(new JwtHelper()).isTokenExpired(json.token)) {
        localStorage.setItem(AuthConfigConsts.DEFAULT_TOKEN_NAME, json.token);
      }
    } catch (err) {
      if (ENV === 'development') {
        console.error(err);
      }
    } finally {
      return res;
    }
  }

  constructor (
    private http: Http,
    private authHttp: AuthHttp,
    private apiMapper: ApiMapperService,
    private router: Router,
  ) {}

  /**
   * Getter whether a user is logged in
   * @TODO
   */
  public get loggedIn () {
    return tokenNotExpired();
  }

  /**
   * Getter whether a user is admin
   * @TODO
   */
  public get isAdminUser (): boolean {
    return (new JwtHelper()).decodeToken(localStorage[AuthConfigConsts.DEFAULT_TOKEN_NAME])
      .isAdmin;
  }

  /**
   * Logs the user out and navigates to a given page
   *
   * @see Router.navigateByUrl
   *  (https://angular.io/docs/ts/latest/api/router/index/Router-class.html#!#navigateByUrl-anchor)
   * @param {string | UrlTree} url Target to redirect to after logout. default: 'login'
   * @param {NavigationExtras} extras
   * @return {Promise<boolean>} result of navigateByUrl call
   */
  public logout (url: string | UrlTree = 'login', extras?: NavigationExtras): Promise<boolean> {
    localStorage.removeItem(AuthConfigConsts.DEFAULT_TOKEN_NAME);
    localStorage.clear();
    sessionStorage.clear();
    return this.router.navigateByUrl(url, extras);
  }

  /**
   * Makes API call to register a user with given form data
   *
   * @param {{ email: string, password: string, passwordConfirmation: string }} registerData
   * @return {Observable<any>}
   */
  public register (
    registerData: { email: string, name: string, password: string, passwordConfirmation: string },
  ): Observable<any> {
    return this.http.post(
      API_ROUTES.register,
      this.apiMapper.registerDataLocalToApi(registerData)
    );
  }

  /**
   * Makes API call to log a user in.
   * Stores JWT in localStorage[DEFAULT_TOKEN_NAME].
   *
   * @param {{ email: string, password: string }} loginData User credentials
   * @return {Observable<any>}
   */
  public login (loginData: { email: string, password: string }): Observable<any> {
    return this.http.post(API_ROUTES.login, loginData)
      .map(AuthService.refreshToken)
      .map(res => res.json());
  }

}
