/**
 * API Room model
 *
 * @export
 * @interface ApiRoom
 */
export interface ApiRoom {
  id: number;
  name: string;
  map: string;
}

/**
 * Local room model
 *
 * @export
 * @interface Room
 * @extends {ApiRoom}
 */
export interface Room extends ApiRoom { }
