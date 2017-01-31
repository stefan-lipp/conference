Begin;
ALTER TABLE Person ADD COLUMN homepage TEXT;
ALTER TABLE Person ADD COLUMN pictureurl TEXT;

ALTER TABLE Institution ADD COLUMN url TEXT;

CREATE TABLE EventRessource (
  eventid Integer REFERENCES event(id) ON DELETE CASCADE ON UPDATE CASCADE not null,
  url TEXT not NULL
);
commit;

