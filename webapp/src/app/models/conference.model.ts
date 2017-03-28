import * as moment from 'moment';
const config = require('../../../../config.json');

/* tslint:disable variable-name */
export const Conference = {
  name: config.name,
  startDate: moment(config.startDate),
  endDate: moment(config.endDate),
  scheduled: Boolean(config.scheduled),
};