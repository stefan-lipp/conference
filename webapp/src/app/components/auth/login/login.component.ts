import { Component } from '@angular/core';
import {
  FormGroup,
  FormBuilder,
  Validators,
} from '@angular/forms';
import { Response } from '@angular/http';
import { Router } from '@angular/router';

import { AuthService } from '../../../services';

@Component({
  selector: 'conference-login',
  templateUrl: './login.template.html',
  styleUrls: [ './login.style.scss' ],
})
export class LoginComponent {

  public form: FormGroup;

  public globalErrors: { message: string }[] = [ ];

  constructor (
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private router: Router,
  ) {
    this.form = this.formBuilder.group({
      'email': [ '', Validators.required ],
      'password': [ '', Validators.required ],
    });
  }

  /**
   * Form submission handler.
   * Navigates to home on success.
   * Shows error on failure.
   *
   * @param {{ email: string, password: string }} data Form data
   * @return {void}
   */
  public onSubmit (data: { email: string, password: string }): void {
    this.authService.login(data).subscribe(
      (res: any) => {
        this.router.navigate([ '' ]);
      },
      (res: Response) => {
        const err = res.json();
        if (res.status === 401) {
          // 401 Unauthorized
          this.globalErrors = [ {
            message: err.message,
          } ];
          if (ENV === 'development') {
            console.error(res.status, err);
          }
        } else if (res.status === 404) {
          // 404 Not Found
          this.globalErrors = [ {
            message: 'Login is temporarily not available. Please try again at a later time.',
          } ];
        } else {
          this.globalErrors = [ {
            message: err.message,
          } ];
          if (ENV === 'development') {
            console.error(res.status, err);
          }
        }
      },
    );
  }
}
