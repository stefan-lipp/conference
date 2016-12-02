import { Injectable } from '@angular/core';

@Injectable()
export class ApiMapperService {

  public registerDataLocalToApi (
    data: { email: string, password: string, passwordConfirmation: string }
  ): { email: string, password: string, password_confirmation: string } {
    return {
      email: data.email,
      password: data.password,
      password_confirmation: data.passwordConfirmation,
    };
  }

}
