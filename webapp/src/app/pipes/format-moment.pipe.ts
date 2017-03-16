import * as moment from 'moment';

import {
  Pipe,
  PipeTransform,
} from '@angular/core';

@Pipe({
  name: 'formatMoment',
})
export class FormatMomentPipe implements PipeTransform {

  /**
   * @memberof PipeTransform
   */
  transform (moment: moment.Moment, format: string = 'Do MMM, HH:mm'): string {
    if (!moment) {
      return '-';
    }
    return moment.format(format);
  }

}
