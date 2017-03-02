export class Track {
  public id: number;
  public name: string;
  public kind: string;
  public color: string;
  public backgroundColor: string;

  public static fromApi (apiRepresentation: ApiTrack): Track {
    return <Track> {
      id: apiRepresentation.id,
      name: apiRepresentation.name,
      kind: apiRepresentation.kind,
      color: apiRepresentation.color,
      backgroundColor: apiRepresentation.backgroundColor,
    };
  }
}

export interface ApiTrack {
  id: number;
  name: string;
  kind: string;
  color: string;
  backgroundColor: string;
}
