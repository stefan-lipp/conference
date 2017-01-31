import * as _ from 'lodash';

/**
 * Institution model.
 */
export class Institution {

  public id: string;
  public name: string;
  public iconUrl?: string;

  public static fromAPI (apiRepresentation: ApiInstitution): Institution {
    return new Institution ({
      id: apiRepresentation.id,
      name: apiRepresentation.name,
      iconUrl: apiRepresentation.iconUrl,
    });
  }

  constructor (data: any) {
    _.merge(this, data);
  }
}

export interface ApiInstitution {
  id: string;
  name: string;
  // optionals
  iconUrl?: string;
}
