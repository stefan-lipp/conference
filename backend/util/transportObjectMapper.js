/**
 * This module exports mapping function to map from e.g. Database Instances
 * to Transport Objects (TOs) to hide database implementation details, ensure
 * only the required information is exposed, and calculate potential
 * additional values.
 */

/* @see http://momentjs.com */
const moment = require('moment');


/**
 * Maps an instance of the Institution database model to a Institution transport object
 */
function toInstitutionTO (institutionInstance) {
  return {
    id: institutionInstance.id,
    name: institutionInstance.name,
    iconUrl: institutionInstance.iconUrl,
  };
}

/**
 * Maps an instance of the Room database model to a Room transport object
 */
function toRoomTO (roomInstance) {
  return {
    id: roomInstance.id,
    name: roomInstance.name,
    map: roomInstance.map,
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
    title: paperInstance.title,
    authors: (paperInstance.authors || [ ])
      .sort((a, b) => { return a.number - b.number; })
      .map(toAuthorTO),
    keywords: (paperInstance.keywords || []).map(toKeywordTO),
    abstract: paperInstance.abstract,
    link: paperInstance.url,
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
    room: eventInstance.room ? toRoomTO(eventInstance.room) : null,
    startTime: startTime ? startTime.format() : null,
    endTime: startTime ? startTime.add(duration, 'minutes').format() : null,
    duration: duration,
    maxSize: eventInstance.maxSize,
    kind: eventInstance.kind,
    favored: Boolean(eventInstance.favorites && eventInstance.favorites.length),
  };
}

/**
 * Maps a instance of the Person database model to a Person transport object
 */
function toCommentTO (commentInstance) {
  const timestamp = commentInstance.timestamp ?
    moment(commentInstance.timestamp).tz('Europe/Berlin') :
    null;
  return {
    person: commentInstance.person ? toPersonTO(commentInstance.person) : null,
    timestamp: timestamp,
    comment: commentInstance.comment,
  };
}

/** Maps an instance of the Track database model to a Track transport object */
function toTrackTO (trackInstance) {
  return {
    id: trackInstance.id,
    name: trackInstance.name,
    kind: trackInstance.kind,
    color: trackInstance.color,
    backgroundColor: trackInstance.backgroundColor,
  };
}

/** Maps a instance of the Session database model to a simple Session transport object */
function toSessionTO (sessionInstance) {
  const events = (sessionInstance.events || []).map(toEventTO)
    .sort((a, b) => { return moment(a.startTime) - moment(b.startTime); });
  return {
    id: sessionInstance.id,
    name: sessionInstance.name,
    track: sessionInstance.track ? toTrackTO(sessionInstance.track) : null,
    startTime: moment(sessionInstance.startTime).tz('Europe/Berlin'),
    endTime: moment(sessionInstance.endTime).tz('Europe/Berlin'),
    chair: sessionInstance.person ? toPersonTO(sessionInstance.person) : null,
    events: events,
    room: events.length ? events[0].room : null,
  };
}


module.exports = {
  toCommentTO: toCommentTO,
  toEventTO: toEventTO,
  toPaperTO: toPaperTO,
  toPersonTO: toPersonTO,
  toRoomTO: toRoomTO,
  toSessionTO: toSessionTO,
  toTrackTO: toTrackTO,
};
