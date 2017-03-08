import {
  Component,
  OnInit,
} from '@angular/core';
import {
  FormGroup,
  FormBuilder,
  Validators,
} from '@angular/forms';

import { Person } from '../../../models';
import { PersonService } from '../../../services';

const MIN_PASSWORD_LENGTH = 7;
const MAX_PASSWORD_LENGTH = 53;

@Component({
  selector: 'conference-account-settings',
  templateUrl: './account-settings.template.html',
  styleUrls: [ './account-settings.styles.scss' ],
})
export class AccountSettingsComponent {

  public user: Person;
  public form: FormGroup;

  constructor (
    private personService: PersonService,
    private formBuilder: FormBuilder,
  ) {
 /*   this.form = this.formBuilder.group({
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
        // @TODO Equal to password
      ]) ],
    });*/
  }

  /**
   * @memberof OnInit
   */
  public ngOnInit () {
    this.personService.getLoggedInPerson().subscribe(person =>
      this.user = person,
    );
  }

}
