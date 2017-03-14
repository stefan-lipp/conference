import { Component } from '@angular/core';
import {
  FormGroup,
  FormBuilder,
  Validators,
} from '@angular/forms';
import { Router } from '@angular/router';
import { Response } from '@angular/http';

import { AuthService } from '../../../services';

@Component({
  selector: 'conference-login',
  templateUrl: './login.template.html',
})
export class LoginComponent {

  /**
   * @type {FormGroup}
   * @memberOf LoginComponent
   */
  public form: FormGroup;

  /**
   * @type {{ message: string }[]}
   * @memberOf LoginComponent
   */
  public globalErrors: { message: string }[] = [ ];

  constructor (
    private authService: AuthService,
    private formBuilder: FormBuilder,
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
   *
   * @memberOf LoginComponent
   */
  public onSubmit (data: { email: string, password: string }): void {
    this.authService.login(data).subscribe(
      (res: any) => {
        this.router.navigate([ '' ]);
      },
      (res: Response) => {
        const err = res.json();
        switch (res.status) {
          case 401:
          case 403:
            // 401 Unauthorized || 403 Forbidden
            this.globalErrors = [ {
              message: err.message,
            } ];
            break;
          case 404:
            // 404 Not Found
            this.globalErrors = [ {
              message: 'Login is temporarily not available. Please try again at a later time.',
            } ];
            break;
          default:
            this.globalErrors = [ {
              message: err.message,
            } ];
        }
        if (ENV === 'development') {
          console.error(res.status, err);
        }
      },
    );
  }
}
