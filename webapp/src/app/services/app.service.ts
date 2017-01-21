import * as moment from 'moment';
import { Injectable } from '@angular/core';

export type MetaData = {
  scheduled: boolean,
  starts: moment.Moment,
  ends: moment.Moment,
}

@Injectable()
export class AppService {

  public metadata: MetaData;

}
