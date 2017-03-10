BEGIN;
CREATE TABLE roomNew (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    MAP TEXT,
    SIZE INTEGER NOT NULL
);

INSERT INTO roomNEW (id,name,MAP,size)
SELECT ROW_NUMBER() OVER (ORDER BY name), name, replace(name, ' ',''),SIZE FROM room;


ALTER TABLE event ADD COLUMN roomid INTEGER REFERENCES roomnew(id) ON UPDATE CASCADE ON DELETE CASCADE;

UPDATE event set roomid = r.id FROM (Select r.id,r.name FROM roomnew r) r WHERE r.name=roomname ;


ALTER TABLE event DROP COLUMN roomname; 

DROP TABLE room;

ALTER TABLE roomnew RENAME TO room;

UPDATE room SET MAP = LOWER(map)||'.png' WHERE map IS NOT NULL AND map <> '';

COMMIT;
