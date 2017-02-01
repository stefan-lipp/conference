import { Injectable } from '@angular/core';

import {
  ConferenceEvent,
  ApiConferenceEvent,
  ConferenceSession,
  ApiConferenceSession,
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
   * Transforms API representation of a conference event to local representation.
   *
   * @param {ApiConferenceEvent} data API representation.
   * @return {ConferenceEvent} Local representation of the conference event.
   */
  public eventApiToLocal (data: ApiConferenceEvent): ConferenceEvent {
    return ConferenceEvent.fromAPI(data);
  }

  /**
   * Transforms API representation of a conference session to local representation.
   *
   * @param {ApiConferenceSession} data API representation.
   * @return {ConferenceEvent} Local representation of the conference session.
   */
  public sessionApiToLocal (data: ApiConferenceSession): ConferenceSession {
    return ConferenceSession.fromAPI(data);
  }

}
