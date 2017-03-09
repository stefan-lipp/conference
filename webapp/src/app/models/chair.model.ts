import * as _ from 'lodash';

export class Chair {

  public id: string;
  public name: string;
  public email: string;
  public institution: string;

  public static fromAPI (apiRepresentation: ApiChair): Chair {
    return new Chair({
      id: apiRepresentation.id,
      name: apiRepresentation.name,
      email: apiRepresentation.email,
      institution: apiRepresentation.institution.name,
    });
  }

   constructor (data: any) {
    _.merge(this, data);
  }

}

export interface ApiChair {
  id: string
  name: string
  email: string
  institution: { id: string, name: string }
}
