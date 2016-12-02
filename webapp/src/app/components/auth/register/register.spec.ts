import {
  inject,
  TestBed,
} from '@angular/core/testing';
import {
  FormsModule,
  ReactiveFormsModule,
} from '@angular/forms';
import {
  Router,
} from '@angular/router';

import { RegisterComponent } from './register.component';
import { AuthService } from '../../../services';
import { RouterStub, AuthServiceStub } from '../../../../testing';

describe('RegisterComponent', () => {
  const mockRouter = new RouterStub();
  const mockAuthService = new AuthServiceStub();

  beforeEach(() => {
    // spyOn(mockAuthService, 'register');
    spyOn(mockRouter, 'navigate');

    TestBed.configureTestingModule({
      providers: [
        RegisterComponent,
        { provide: AuthService, useValue: mockAuthService },
        { provide: Router, useValue: mockRouter },
      ],
      imports: [
        FormsModule,
        ReactiveFormsModule,
      ],
    }).compileComponents();

  });

  it('should be defined',  inject([ RegisterComponent ], (register: RegisterComponent) => {
    expect(register instanceof RegisterComponent).toBeTruthy();
  }));

  it(
    'should start without global errors',
    inject(
      [ RegisterComponent ],
      (register: RegisterComponent) => {
        expect(register.globalErrors).toEqual([ ]);
      }
    )
  );

  describe('form Submission', () => {
    it('should accept a valid form',
      inject(
        [ RegisterComponent ],
        (register: RegisterComponent) => {
          register.form.controls['email'].setValue('valid@email.com');
          register.form.controls['password'].setValue('validPassword');
          register.form.controls['passwordConfirmation'].setValue('validPassword');

          register.onSubmit(register.form.value);

          // expect(mockAuthService.register).toHaveBeenCalledWith({
          //   email: 'valid@email.com',
          //   password: 'validPassword',
          //   passwordConfirmation: 'validPassword',
          // });
          expect(mockRouter.navigate).toHaveBeenCalledWith(
            [ 'login' ],
            { queryParams: Object({ registerSuccess: true }) },
          );
          expect(register.globalErrors).toEqual([ ]);
        },
      )
    );

    it(
      'should reject forms with invalid email',
      inject(
        [ RegisterComponent ],
        (register: RegisterComponent) => {
          register.form.controls['email'].setValue('notanemailaddress');
          register.form.controls['password'].setValue('validPassword');
          register.form.controls['passwordConfirmation'].setValue('validPassword');

          register.onSubmit(register.form.value);

          // expect(mockAuthService.register).not.toHaveBeenCalled();
          expect(mockRouter.navigate).not.toHaveBeenCalled();
          expect(register.globalErrors).toContain({
            message: 'An error occured. Please make sure all fields are filled out correctly.',
          });
        }
      )
    );

    it(
      'should reject forms with invalid password',
      inject(
        [ RegisterComponent ],
        (register: RegisterComponent) => {
          register.form.controls['email'].setValue('valid@email.com');
          register.form.controls['password'].setValue( 'short');
          register.form.controls['passwordConfirmation'].setValue('short');

          register.onSubmit(register.form.value);

          // expect(mockAuthService.register).not.toHaveBeenCalled();
          expect(mockRouter.navigate).not.toHaveBeenCalled();
          expect(register.globalErrors).toContain({
            message: 'An error occured. Please make sure all fields are filled out correctly.',
          });
        }
      )
    );

    // @TODO password confirmation

  });
});
