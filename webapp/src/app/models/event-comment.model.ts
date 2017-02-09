import * as _ from 'lodash';

export class Comment {

  timestamp: string;
  name: string;
  content: string;

  public static fromAPI (apiRepresentation: ApiComment): Comment {
    return new Comment({
      timestamp: apiRepresentation.timestamp,
      name: apiRepresentation.name,
      content: apiRepresentation.content,
    });
  }


  constructor (data: any) {
    _.merge(this, data);
  }

}

export interface ApiComment {
  timestamp: string;
  name: string;
  content: string;
}
