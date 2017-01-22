import * as moment from 'moment';

export class Track {
  public id: number;
  public name: string;
  public kind: string;
  public color: string;
  public backgroundColor: string;

  public slots: { start: moment.Moment, end: moment.Moment }[];

  public static fromApi (apiRepresentation): Track {
    return <Track> {
      id: apiRepresentation.id,
      name: apiRepresentation.name,
      kind: apiRepresentation.kind,
      color: apiRepresentation.color,
      backgroundColor: apiRepresentation.backgroundColor,
      slots: apiRepresentation.slots.map(apiSlot => {
        return { start: moment(apiSlot.start), end: moment(apiSlot.end) };
      }),
    };
  }
}
