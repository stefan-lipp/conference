/* @see http://momentjs.com */
const moment = require('moment');

function toPaperTO (paperInstance) {
  return paperInstance;
}

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
