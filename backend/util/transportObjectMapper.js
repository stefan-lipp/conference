/**
 * This module exports mapping function to map from e.g. Database Instances
 * to Transport Objects (TOs) to hide database implementation details, ensure
 * only the required information is exposed, and calculate potential
 * additional values.
 */

/* @see http://momentjs.com */
const moment = require('moment');

/**
 * Maps a instance of the Paper database model to a Paper transport object
 */
function toPaperTO (paperInstance) {
  return paperInstance;
}

/**
 * Maps a instance of the Event database model to a Event transport object
 */
function toEventTO (eventInstance) {
  return {
    id: eventInstance.id,
    title: ((eventInstance.paper && eventInstance.paper.title) ||
      eventInstance.alias ||
      '<untitled event>'),
    paper: toPaperTO(eventInstance.paper),
    roomname: eventInstance.roomname,
    starttime: moment(eventInstance.starttime).tz('Europe/Berlin').format('MM-DD-YYYY HH:mm'),
    endtime: null, // TODO
    duration: eventInstance.duration, // TODO
    maxsize: eventInstance.maxsize,
    kind: eventInstance.kind,
    favoured: Boolean(eventInstance.favorites.length),
  }
}

module.exports = {
  toPaperTO: toPaperTO,
  toEventTO: toEventTO,
};
