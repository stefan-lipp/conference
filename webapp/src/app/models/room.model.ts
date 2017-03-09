import * as _ from 'lodash';

/**
 * Room model.
 */
export class Room {

  public id: Number;
  public name: string;
  public map: string;

  public static fromAPI (apiRepresentation: ApiRoom): Room {
    return new Room({
      id: apiRepresentation.id,
      name: apiRepresentation.name,
      map: apiRepresentation.map,
    });
  }

   constructor (data: any) {
    _.merge(this, data);
  }

}

export interface ApiRoom {
  id: number;
  name: string;
  map: string;
}
