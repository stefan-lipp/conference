import * as _ from 'lodash';
import {
  Institution,
  ApiInstitution,
} from './institution.model';
/**
 * Person model.
 */
export class Person {

  public id: string;
  public name: string;
  public email: string;
  // optionals
  public details?: string;
  public institution?: Institution;

  public static fromAPI (apiRepresentation: ApiPerson): Person {
    return new Person ({
      id: apiRepresentation.id,
      name: apiRepresentation.name,
      email: apiRepresentation.email,
      details: apiRepresentation.details,
      institution: apiRepresentation.institution ?
        Institution.fromAPI(apiRepresentation.institution) : null,
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
  institution?: ApiInstitution;
}
