CREATE TABLE schduler_helper_favoritestemp
(
  personid uuid,
  eventid integer
);
CREATE TABLE scheduler_helper
(
  eventid integer,
  start timestamp without time zone
);
CREATE TABLE scheduler_helper_timeslots
(
  start timestamp without time zone,
  rank bigint
);
CREATE TABLE roomer_helper
(
  eventid integer,
  roomname text
);
