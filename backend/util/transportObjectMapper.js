/**
 * This module exports mapping function to map from e.g. Database Instances
 * to Transport Objects (TOs) to hide database implementation details, ensure
 * only the required information is exposed, and calculate potential
 * additional values.
 */

/* @see http://momentjs.com */
const moment = require('moment');


/**
 * Maps an instance of the Institution database model to a Person transport object
 */
function toInstitutionTO (institutionInstance) {
  return {
    id: institutionInstance.id,
    name: institutionInstance.name,
    iconUrl: institutionInstance.iconUrl,
  };
}


/**
 * Maps a instance of the Person database model to a Person transport object
 */
function toPersonTO (personInstance) {
  return {
    id: personInstance.id,
    name: personInstance.name,
    email: personInstance.email,
    institution: personInstance.institution ? toInstitutionTO(personInstance.institution) : { },
  };
}

/**
 * Maps a instance of the Speaker database model to a Speaker transport object
 */
function toSpeakerTO (speakerInstance) {
  return toPersonTO(speakerInstance.person);
}

/**
 * Maps a instance of the Author database model to a Author transport object
 */
function toAuthorTO (authorInstance) {
  return toPersonTO(authorInstance.person);
}

/**
 * Maps a instance of the Paper database model to a Paper transport object
 */
function toKeywordTO (keywordInstance) {
  return keywordInstance.keyword;
}

/**
 * Maps a instance of the Paper database model to a Paper transport object
 */
function toPaperTO (paperInstance) {
  return {
    id: paperInstance.id,
    title: paperInstance.titel,
    authors: (paperInstance.authors || [ ])
      .sort((a, b) => { return a.number - b.number; })
      .map(toAuthorTO),
    keywords: (paperInstance.keywords || []).map(toKeywordTO),
    abstract: paperInstance.abstract,
    link: paperInstance.link,
    tag: paperInstance.tag,
  };
}


/**
 * Maps a instance of the Event database model to a Event transport object
 */
function toEventTO (eventInstance) {
  // Duration comes in the format HH:mm:ss
  const DURATION_NUM_BLOCK_COUNT = 3;
  const durationArr = eventInstance.duration.match(/[^:]+/g).map(d => parseInt(d, 10));
  if (durationArr.length !== DURATION_NUM_BLOCK_COUNT) {
    throw new Error('Invalid duration format in event instance');
  }
  const duration = (durationArr[0] * 60) + durationArr[1];

  const startTime = eventInstance.startTime ?
    moment(eventInstance.startTime).tz('Europe/Berlin') :
    null;

  return {
    id: eventInstance.id,
    title: ((eventInstance.paper && eventInstance.paper.title) ||
      eventInstance.alias ||
      '<untitled event>'),
    paper: eventInstance.paper ? toPaperTO(eventInstance.paper) : null,
    speakers: (eventInstance.speakers || [ ])
      .sort((a, b) => { return a.number - b.number; })
      .map(toSpeakerTO),
    roomName: eventInstance.roomname,
    startTime: startTime ? startTime.format() : null,
    endTime: startTime ? startTime.add(duration, 'minutes').format() : null,
    duration: duration,
    maxSize: eventInstance.maxSize,
    kind: eventInstance.kind,
    favored: Boolean(eventInstance.favorites && eventInstance.favorites.length),
  };
}

/** Maps a instance of the Session database model to a simple Session transport object */
function toSessionTO (sessionInstance) {
  return {
    id: sessionInstance.id,
    name: sessionInstance.name,
    // TODO
    track: {
      id: null,
      name: 'Dummy Track Name',
      color: '#ffffff',
      backgroundColor: '#03a9f4',
    },
    startTime: moment(sessionInstance.startTime),
    endTime: moment(sessionInstance.endTime),
    // TODO
    room: null,
    events: sessionInstance.events.map(toEventTO),
  };
}

/** Maps an instance of the Track database model to a Track transport object */
function toTrackTO (trackInstance) {
  const TMP_RANDOM_OFFSET = 2;
  const TMP_RANDOM_LENGTH = 4;
  return {
    id: trackInstance.id,
    name: trackInstance.name,
    kind: trackInstance.kind,
    color: trackInstance.color,
    backgroundColor: trackInstance.backgroundColor,
    // TODO
    slots: [ {
      start: moment().add(Math.floor(Math.random() * TMP_RANDOM_OFFSET), 'hours').format(),
      end: moment().add(TMP_RANDOM_OFFSET + Math.floor(Math.random() * TMP_RANDOM_LENGTH), 'hours')
        .format(),
    } ],
  };
}

module.exports = {
  toEventTO: toEventTO,
  toPaperTO: toPaperTO,
  toPersonTO: toPersonTO,
  toSessionTO: toSessionTO,
  toTrackTO: toTrackTO,
};
