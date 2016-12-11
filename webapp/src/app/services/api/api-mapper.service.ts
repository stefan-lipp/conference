import { Injectable } from '@angular/core';

@Injectable()
export class ApiMapperService {

  public registerDataLocalToApi (
    data: { email: string, name: string, password: string, passwordConfirmation: string }
  ): { email: string, name: string, password: string, password_confirmation: string } {
    return {
      email: data.email,
      name: data.name,
      password: data.password,
      password_confirmation: data.passwordConfirmation,
    };
  }

}
