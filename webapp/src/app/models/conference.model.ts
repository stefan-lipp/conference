import * as moment from 'moment';
const config = require('../../../../config.json');

export class Conference {
  public name: string;
  public startDate: moment.Moment;
  public endDate: moment.Moment;
  public scheduled: boolean;

  constructor() {
    this.name = config['name'];
    this.startDate = moment(config['startDate']);
    this.endDate = moment(config['endDate']);
    this.scheduled = config['scheduled'];
  }
}
