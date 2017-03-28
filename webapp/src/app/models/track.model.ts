/**
 * API Track model
 *
 * @export
 * @interface ApiTrack
 */
export interface ApiTrack {
  id: number;
  name: string;
  kind: string;
  color: string;
  backgroundColor: string;
}

/**
 * Local Track model
 *
 * @export
 * @interface Track
 * @extends {ApiTrack}
 */
export interface Track extends ApiTrack { }
