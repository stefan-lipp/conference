import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { CanActivate } from '@angular/router';

import { AuthService } from './auth.service';

/**
 * Guard to require login on routes
 *
 * @export
 * @class AuthGuard
 * @implements {CanActivate}
 */
@Injectable()
export class AuthGuard implements CanActivate {

  constructor(
    private authService: AuthService,
    private router: Router,
  ) { }

  /**
   * @returns {boolean}
   * @memberOf CanActivate
   */
  public canActivate (): boolean {
    if (this.authService.loggedIn) {
      return true;
    } else {
      this.router.navigate([ 'login' ]);
      return false;
    }
  }
}

/**
 * Guard to require login as admin on routes
 *
 * @export
 * @class AdminGuard
 * @implements {CanActivate}
 */
@Injectable()
export class AdminGuard implements CanActivate {

  constructor(
    private authService: AuthService,
    private router: Router,
  ) { }

  /**
   * @returns {boolean}
   *
   * @memberOf CanActivate
   */
  public canActivate (): boolean {
    if (this.authService.loggedIn && this.authService.isAdmin) {
      return true;
    } else if (this.authService.loggedIn) {
      this.router.navigate([ '' ]);
      return false;
    } else {
      this.router.navigate([ 'login' ]);
      return false;
    }
  }
}
