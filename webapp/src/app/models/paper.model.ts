import * as _ from 'lodash';

/**
 * Paper model.
 */
export class Paper {
  public id: string;
  public title: string;
  public authors: string[];
  // optionals
  public keywords?: string[];
  public abstract?: string;
  public link?: string;
  public tag?: string;

  public static fromAPI (apiRepresentation: ApiPaper): Paper {
    if (!apiRepresentation) {
      return null;
    }
    const keywordArray = apiRepresentation.keywords.split(',');
    return {
      id: apiRepresentation.id,
      title: apiRepresentation.title,
      authors: apiRepresentation.authors,
      keywords: keywordArray,
      abstract: apiRepresentation.abstract,
      link: apiRepresentation.link,
      tag: apiRepresentation.tag,
    };
  }

  constructor (data: any) {
    _.merge(this, data);
  }
}

export interface ApiPaper {
  id: string;
  title: string;
  authors: string[];
  // optionals
  keywords?: string;
  abstract?: string;
  link?: string;
  tag?: string;
}
