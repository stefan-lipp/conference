import {
  FormControl,
  ValidatorFn,
} from '@angular/forms';

/**
 * Validators helper class
 *
 * @export
 * @class FormValidators
 */
export class FormValidators {

  /**
   * Validates whether the value entered in a FormControl is a valid email address
   * @see http://regexlib.com/REDetails.aspx?regexp_id=26
   * @static
   * @param {FormControl} formControl FormControl to validate
   * @return {Object} null when valid, { invalidEmail: true } when invalid
   */
  public static validateEmail (formControl: FormControl) {
    /* tslint:disable:max-line-length */
    let regex = new RegExp(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/);
    /* tslint:enable */
    return regex.test(formControl.value) ? null : {
      invalidEmail: true,
    };
  }

  /**
   * Validates whether a given FormControl has the same value as a given string
   *
   * @static
   * @param {string | (() => string)} value Either a simple string to compare to
   *                                        or a function that returns a string
   * @return {ValidatorFn} Validation function
   */
  public static validateEquality (value: string | (() => string)): ValidatorFn {
    if (typeof value === 'string') {
      return (formControl: FormControl) =>
        formControl.value === value ? null : {
          matching: false,
        };
    } else if (typeof value === 'function') {
      return (formControl: FormControl) =>
        formControl.value === value() ? null : {
          matching: false,
        };
    } else {
      throw 'Invalid input in validateEquality function';
    }
  }

}
