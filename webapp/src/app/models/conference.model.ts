import * as moment from 'moment';
const config = require('../../../../config.json');

export class Conference {
  public name: string;
  public startDate: moment.Moment;
  public endDate: moment.Moment;

  constructor() {
    this.name = config['name'];
    this.startDate = moment(config['startDate']);
    this.endDate = moment(config['endDate']);
  };
}
