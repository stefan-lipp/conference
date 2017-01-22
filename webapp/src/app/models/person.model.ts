import * as _ from 'lodash';

/**
 * Person model.
 */
export class Person {

  public id: string;
  public name: string;
  public email: string;
  // optionals
  public details?: string;

  public static fromAPI (apiRepresentation: ApiPerson): Person {
    return new Person ({
      id: apiRepresentation.id,
      name: apiRepresentation.name,
      email: apiRepresentation.email,
      details: apiRepresentation.details,
    });
  }

  constructor (data: any) {
    _.merge(this, data);
  }
}

export interface ApiPerson {
  id: string;
  name: string;
  email: string;
  // optionals
  details?: string;
}
