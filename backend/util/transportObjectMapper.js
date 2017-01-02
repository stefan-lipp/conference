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
   return {
    id: paperInstance.id,
    title: paperInstance.title,
    authors: (paperInstance.authors || [ ]).map(toAuthorTO),
    keywords: paperInstance.keywords,
    abstract: paperInstance.abstract,
    link: paperInstance.url,
    tag: paperInstance.tag,
  }
}

/**
 * Maps a instance of the Author database model to a Author transport object
 */
function toAuthorTO (authorInstance) {
  return toPersonTO(authorInstance.person);
}

/**
 * Maps a instance of the Person database model to a Person transport object
 */
function toPersonTO (personInstance) {
  return {
    id: personInstance.id,
    name: personInstance.name,
    email: personInstance.email,
  };
}

/**
 * Maps a instance of the Event database model to a Event transport object
 */
function toEventTO (eventInstance) {
  // duration comes in the format HH:mm:ss
  const durationArr = eventInstance.duration.match(/[^:]+/g).map(d => parseInt(d));
  if (durationArr.length !== 3) {
    throw 'Invalid duration format in event instance';
  }
  const duration = durationArr[0] * 60 + durationArr[1];

  const startTime = eventInstance.starttime ?
    moment(eventInstance.starttime).tz('Europe/Berlin') :
    null;

  return {
    id: eventInstance.id,
    title: ((eventInstance.paper && eventInstance.paper.title) ||
      eventInstance.alias ||
      '<untitled event>'),
    paper: eventInstance.paper?toPaperTO(eventInstance.paper):null,
    roomName: eventInstance.roomname,
    startTime: startTime ? startTime.format() : null,
    endTime: startTime ? startTime.add(duration, 'minutes').format() : null,
    duration: duration,
    maxSize: eventInstance.maxsize,
    kind: eventInstance.kind,
    favored: Boolean(eventInstance.favorites && eventInstance.favorites.length),
  }
}

module.exports = {
  toEventTO: toEventTO,
  toPaperTO: toPaperTO,
  toPersonTO: toPersonTO,
};
