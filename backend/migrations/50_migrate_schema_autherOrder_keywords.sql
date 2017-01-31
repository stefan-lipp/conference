Begin;
ALTER TABLE tag RENAME TO keyword;

ALTER TABLE paper DROP column tag;
DELETE from keyword;
INSERT INTO keyword
(Select DISTINCT unnest(string_to_array(trim(keywords),',')) keywords from paper);
CREATE TABLE paperKeyword (
  paperid INTEGER REFERENCES paper(id) ON DELETE CASCADE ON UPDATE CASCADE,
  keyword TEXT REFERENCES keyword(name) ON DELETE CASCADE ON UPDATE CASCADE ,
  PRIMARY KEY (keyword,paperid)
);
INSERT INTO paperKeyword
Select id,unnest(string_to_array(trim(keywords),',')) keywords from paper;
ALTER TABLE paper DROP column keywords;

ALTER TABLE Author ADD COLUMN number integer;
UPDATE Author SET number = t.rnum
FROM ( SELECT personid,paperid, row_number() OVER (PARTITION BY paperid) as rnum FROM author) t
where Author.personid=t.personid AND Author.paperid=t.paperid;
ALTER TABLE Author ALTER COLUMN number SET NOT NULL;

ALTER TABLE Speaker ADD COLUMN number integer;
UPDATE Speaker SET number = t.rnum
FROM ( SELECT personid,eventid, row_number() OVER (PARTITION BY eventid) as rnum FROM speaker) t
where Speaker.personid=t.personid AND Speaker.eventid=t.eventid;
ALTER TABLE Speaker ALTER COLUMN number SET NOT NULL;

INSERT INTO kind VALUES ('Demo'),('Industry');

UPDATE keyword SET name='Industry' WHERE name='Industrial';

UPDATE event SET kind=t.kind FROM (
SELECT e.id, k[1] kind
FROM (SELECT p.id,array_agg(keyword) K FROM paper p
    JOIN paperkeyword ON p.id=paperkeyword.paperid
    WHERE keyword IN (SELECT * FROM kind)
    GROUP BY p.id) s
JOIN event e ON s.id=e.paperid) t
WHERE t.id=event.id;

commit;

