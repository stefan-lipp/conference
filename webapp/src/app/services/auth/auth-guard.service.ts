import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { CanActivate } from '@angular/router';

import { AuthService } from './auth.service';

@Injectable()
export class AuthGuard implements CanActivate {

  constructor(
    private authService: AuthService,
    private router: Router,
  ) {}

  public canActivate () {
    if (this.authService.loggedIn) {
      return true;
    } else {
      this.router.navigate([ 'login' ]);
      return false;
    }
  }
}

@Injectable()
export class AdminGuard implements CanActivate {

  constructor(
    private authService: AuthService,
    private router: Router,
  ) {}

  public canActivate () {
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
