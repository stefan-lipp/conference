import * as _ from 'lodash';
import {
  Institution,
  ApiInstitution,
} from './institution.model';

/**
 * Local person model
 *
 * @export
 * @class Person
 */
export class Person {

  /**
   * Transforms API representation of a person to local
   *
   * @static
   * @param {ApiPerson} apiRepresentation
   * @returns {Person}
   *
   * @memberOf Person
   */
  public static fromAPI (apiRepresentation: ApiPerson): Person {
    if (!apiRepresentation) {
      return null;
    }

    return new Person (
      apiRepresentation.id,
      apiRepresentation.name,
      apiRepresentation.email,
      apiRepresentation.details,
      <Institution> apiRepresentation.institution,
    );
  }

  /**
   * Creates an instance of Person.
   * @param {string} id
   * @param {string} name
   * @param {string} email
   * @param {string} [details='']
   * @param {Institution} [institution]
   *
   * @memberOf Person
   */
  constructor (
    public id: string,
    public name: string,
    public email: string,
    public details: string = '',
    public institution?: Institution,
  ) { }
}

/**
 * API Person model
 *
 * @export
 * @interface ApiPerson
 */
export interface ApiPerson {
  id: string;
  name: string;
  email: string;

  details?: string;
  institution?: ApiInstitution;
}
