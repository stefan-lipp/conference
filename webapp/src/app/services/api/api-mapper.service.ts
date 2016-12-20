import { Injectable } from '@angular/core';

import {
  ConferenceEvent,
  ApiConferenceEvent,
} from '../../models';

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

  /**
   * Transforms API representation of an Event to local representation
   * @param {ApiConferenceEvent} data API representation
   * @return {ConferenceEvent} Local representation
   */
  public eventApiToLocal (data: ApiConferenceEvent): ConferenceEvent {
    return ConferenceEvent.fromAPI(data);
  }

}
