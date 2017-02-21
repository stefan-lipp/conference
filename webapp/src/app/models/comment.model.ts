import * as _ from 'lodash';
import { Person } from './person.model';
import * as moment from 'moment';

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
