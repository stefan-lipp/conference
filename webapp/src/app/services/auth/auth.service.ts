import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import { Router, UrlTree, NavigationExtras } from '@angular/router';
import { Observable } from 'rxjs';
import {
  tokenNotExpired,
  AuthHttp,
  AuthConfigConsts,
  JwtHelper,
} from 'angular2-jwt';

import { API_ROUTES } from '../api-routes';

/**
 * Service for various authentication related tasks
 *
 * @export
 * @class AuthService
 */
@Injectable()
export class AuthService {

  /**
   * Checks a given response for a new token and updates.
   *
   * @static
   * @param {Response} res Response
   * @returns {Response} unchanged response
   *
   * @memberOf AuthService
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
    private router: Router,
  ) { }

  /**
   * Getter whether a user is logged in
   * @TODO
   * @readonly
   * @type {boolean}
   * @memberOf AuthService
   */
  public get loggedIn () {
    return tokenNotExpired();
  }

  /**
   * Getter whether a user is admin in
   *
   * @readonly
   * @type {boolean}
   * @memberOf AuthService
   */
  public get isAdmin (): boolean {
    const token = localStorage.getItem(AuthConfigConsts.DEFAULT_TOKEN_NAME);
    if (!token) {
      return false;
    }
    const tokenData = (new JwtHelper()).decodeToken(token);
    if (!tokenData) {
      return false;
    }
    return Boolean(tokenData.isAdmin);
  }

  /**
   * Logged in users userName
   *
   * @readonly
   * @type {string}
   * @memberOf AuthService
   */
  public get userName (): string {
    const token = localStorage.getItem(AuthConfigConsts.DEFAULT_TOKEN_NAME);
    if (!token) {
      return null;
    }
    const tokenData = (new JwtHelper()).decodeToken(token);
    if (!tokenData) {
      return null;
    }
    return tokenData.personName;
  }

  /**
   * @readonly
   * @type {string}
   * @memberOf AuthService
   */
  public get userId (): string {
    const token = localStorage.getItem(AuthConfigConsts.DEFAULT_TOKEN_NAME);
    if (!token) {
      return null;
    }
    const tokenData = (new JwtHelper()).decodeToken(token);
    if (!tokenData) {
      return null;
    }
    return tokenData.personId;
  }

  /**
   * Logs the user out and navigates to a given page
   *
   * @see Router.navigateByUrl
   *  (https://angular.io/docs/ts/latest/api/router/index/Router-class.html#!#navigateByUrl-anchor)
   * @param {(string | UrlTree)} url Target to redirect to after logout. default: 'login'
   * @param {NavigationExtras} extras
   * @returns {Promise<boolean>} result of navigateByUrl call
   *
   * @memberOf AuthService
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
   *
   * @memberOf AuthService
   */
  public register (
    registerData: { email: string, name: string, password: string, passwordConfirmation: string },
  ): Observable<any> {
    return this.http.post(
      API_ROUTES.register,
      registerData,
    );
  }

  /**
   * Makes API call to log a user in.
   * Stores JWT in localStorage[DEFAULT_TOKEN_NAME].
   *
   * @param {{ email: string, password: string }} loginData User credentials
   * @return {Observable<any>}
   *
   * @memberOf AuthService
   */
  public login (loginData: { email: string, password: string }): Observable<any> {
    return this.http.post(API_ROUTES.login, loginData)
      .map(AuthService.refreshToken)
      .map(res => res.json());
  }

}
