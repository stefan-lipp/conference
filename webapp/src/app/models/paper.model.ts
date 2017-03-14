import {
  Person,
  ApiPerson,
} from './person.model';

/**
 * Local paper model
 *
 * @export
 * @class Paper
 */
export class Paper {

  /**
   * Transforms API paper model to local
   *
   * @static
   * @param {ApiPaper} apiRepresentation
   * @returns {Paper}
   *
   * @memberOf Paper
   */
  public static fromAPI (apiRepresentation: ApiPaper): Paper {
    if (!apiRepresentation) {
      return null;
    }

    return new Paper(
      apiRepresentation.id,
      apiRepresentation.title,
      apiRepresentation.authors.map(Person.fromAPI),
      apiRepresentation.keywords,
      apiRepresentation.abstract,
      apiRepresentation.link,
      apiRepresentation.tag,
    );
  }

  /**
   * Creates an instance of Paper.
   * @param {string} id
   * @param {string} title
   * @param {Person[]} authors
   * @param {string[]} keywords
   * @param {string} [abstract='']
   * @param {string} [link='']
   * @param {string} [tag='']
   *
   * @memberOf Paper
   */
  constructor (
    public id: string,
    public title: string,
    public authors: Person[],
    public keywords: string[],
    public abstract: string = '',
    public link: string = '',
    public tag: string = '',
  ) { }
}

/**
 * API paper model
 *
 * @export
 * @interface ApiPaper
 */
export interface ApiPaper {
  id: string;
  title: string;
  authors: ApiPerson[];
  keywords: string[];
  abstract?: string;
  link?: string;
  tag?: string;
}
