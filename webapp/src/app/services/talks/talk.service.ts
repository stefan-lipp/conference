import { Injectable } from '@angular/core';
import { Http }       from '@angular/http';

import { Talk }       from '../../models/talk.model';

import { API_ROUTES } from '../api.routes';
import { TALKS } from './mock-talks';


@Injectable()
export class TalkService {

  /**
   * Constructor for the talk service.
   */
  constructor(private http: Http) { }


  /**
   * Finds all talks of the conference.
   *
   * @return A promise with a list of talks.
   */
  public findAll(): Promise<Talk[]> {
    return Promise.resolve(TALKS);
  }

  /**
   * Saves a new talk or updates an existing one.
   *
   * @param talk: The talk to save or update.
   * @return void
   */
  public save(talk: Talk): void {
    let existingTalk = TALKS.find(elem => elem.id === talk.id);
    if (existingTalk === undefined) {
      TALKS.push(talk);
    } else {
      let existingIndex = TALKS.indexOf(existingTalk);
      TALKS[existingIndex] = talk;
    }
  }

}
