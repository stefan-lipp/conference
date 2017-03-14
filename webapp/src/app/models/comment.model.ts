import * as moment from 'moment';
import {
  ApiPerson,
  Person,
} from './person.model';

/**
 * Local comment model
 *
 * @export
 * @class Comment
 */
export class Comment {

  /**
   * Transform API-representation of a comment to local representation
   *
   * @static
   * @param {ApiComment} apiRepresentation
   * @returns {Comment}
   *
   * @memberOf Comment
   */
  public static fromAPI (apiRepresentation: ApiComment): Comment {
    if (!apiRepresentation) {
      return null;
    }

    return new Comment(
      moment(apiRepresentation.timestamp),
      Person.fromAPI(apiRepresentation.person),
      apiRepresentation.comment,
    );
  }

  /**
   * Creates an instance of Comment.
   * @param {moment.Moment} timestamp Timestamp of comment creation
   * @param {Person} person Author
   * @param {string} comment Comment content
   *
   * @memberOf Comment
   */
  constructor (
    public timestamp: moment.Moment,
    public person: Person,
    public comment: string,
  ) { }

  /**
   * Formatted timestamp.
   * 'Just now'  if less than a minute ago
   *
   * @readonly
   * @type {string}
   * @memberOf Comment
   */
  public get formattedTime (): string {
    if (this.timestamp.diff(moment()) < 60 * 1000) {
      return 'Just now';
    }
    return this.timestamp.format('MMM Do, HH:mm');
  }

}

/**
 * API comment model
 *
 * @export
 * @interface ApiComment
 */
export interface ApiComment {
  timestamp: string;
  person: ApiPerson;
  comment: string;
}
