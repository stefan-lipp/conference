import { Component } from '@angular/core';
import {
  FormGroup,
  FormBuilder,
  Validators,
} from '@angular/forms';
import { Response } from '@angular/http';
import { Router } from '@angular/router';

import { FormValidators } from '../../../util';
import { AuthService } from '../../../services';

const MIN_PASSWORD_LENGTH = 7;
const MAX_PASSWORD_LENGTH = 53;

@Component({
  selector: 'conference-register',
  templateUrl: './register.template.html',
})
export class RegisterComponent {

  /**
   * @type {FormGroup}
   * @memberOf RegisterComponent
   */
  public form: FormGroup = null;

  /**
   * @type {{ message: string }[]}
   * @memberOf RegisterComponent
   */
  public globalErrors: { message: string }[] = [ ];

  constructor (
    private authService: AuthService,
    private formBuilder: FormBuilder,
    private router: Router,
  ) {
    this.form = this.formBuilder.group({
      'email': [ '', Validators.compose([
        Validators.required,
        FormValidators.validateEmail,
      ]) ],
      'name': [ '', Validators.compose([
        Validators.required,
      ]) ],
      'password': [ '', Validators.compose([
        Validators.required,
        Validators.minLength(MIN_PASSWORD_LENGTH),
        Validators.maxLength(MAX_PASSWORD_LENGTH),
      ]) ],
      'passwordConfirmation': [ '', Validators.compose([
        Validators.required,
      ]) ],
    });
  }

  /**
   * Form submission handler.
   * Navigates to home with ?registerSuccess=true on succes @TODO
   * Shows error on failure.
   *
   * @param {{ email: string, password: string, passwordConfirmation: string }} data Form data
   * @return {void}
   *
   * @memberOf RegisterComponent
   */
  public onSubmit (
    data: { email: string, name: string, password: string, passwordConfirmation: string }
  ): void {
    if (this.form.valid) {
      this.authService.register(data).subscribe(res => {
        this.router.navigate([ 'login' ], { queryParams: { registerSuccess: true } });
      }, (res: Response) => {
        switch (res.status) {
          case 400:
            // 400 Bad Request
            this.globalErrors = [ {
              message: 'An error occured. Please make sure all fields are filled out correctly.',
            } ];
            break;
          case 404:
            // 404 Not found
            this.globalErrors = [ {
              message:
                'Registration is temporarily not available. Please try again at a later time.',
            } ];
            break;
          default:
            this.globalErrors = [ {
              message: 'An error occured. Please try again at a later time.',
            } ];
        }

        if (ENV === 'development') {
          console.error(res.status, res);
        }
      });
    } else {
      this.globalErrors = [ {
        message: 'An error occured. Please make sure all fields are filled out correctly.',
      } ];
    }
  }

}
