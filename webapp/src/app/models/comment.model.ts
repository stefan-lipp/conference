import * as _ from 'lodash';
import * as moment from 'moment';
import { Person } from './person.model';

export class Comment {

  timestamp: string;
  person: Person;
  comment: string;

  public static fromAPI (apiRepresentation: ApiComment): Comment {
    return new Comment({
      timestamp: moment(apiRepresentation.timestamp).format('MMM Do, HH:mm'),
      person: apiRepresentation.person,
      comment: apiRepresentation.comment,
    });
  }


  constructor (data: any) {
    _.merge(this, data);
  }

}

export interface ApiComment {
  timestamp: string;
  person: Person;
  comment: string;
}
