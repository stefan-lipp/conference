CREATE DATABASE conference;

CREATE USER <username> PASSWORD '<pw>';
GRANT ALL ON DATABASE conference TO <username>;
commit;

USE conference;

CREATE TABLE public.conference (
	id SERIAL,
	"name" varchar(255) NOT NULL,
	location varchar(255) NOT NULL,
	fromdate date NOT NULL,
	untildate date NOT NULL,
	CONSTRAINT conference_name_key UNIQUE ("name"),
	CONSTRAINT conference_pkey PRIMARY KEY (id)
)
WITH 	(
	OIDS=FALSE
);


CREATE TABLE public.kind (
	"name" varchar(255) NOT NULL,
	CONSTRAINT kind_pkey PRIMARY KEY ("name")
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public.room (
	"name" varchar(255) NOT NULL,
	"size" int4 NOT NULL,
	conferenceid int4 NOT NULL,
	CONSTRAINT room_pkey PRIMARY KEY ("name"),
	CONSTRAINT room_conferenceid_fkey FOREIGN KEY (conferenceid) REFERENCES public.conference(id)
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public.track (
	id SERIAL,
	conferenceid int4 NULL,
	"name" varchar(255) NULL,
	kind varchar(255) NOT NULL,
	CONSTRAINT track_pkey PRIMARY KEY (id),
	CONSTRAINT track_kind_fkey FOREIGN KEY (kind) REFERENCES public.kind("name")
)
WITH (
	OIDS=FALSE
);




CREATE TABLE public.institution (
	id uuid NOT NULL,
	"name" varchar(255) NOT NULL,
	details text NULL,
	iconurl varchar(255) NULL,
	url varchar(255) NULL,
	CONSTRAINT institution_pkey PRIMARY KEY (id)
)
WITH (
	OIDS=FALSE
);





CREATE TABLE public.person (
	id uuid NOT NULL,
	"name" varchar(255) NOT NULL,
	institutionid uuid NULL,
	email varchar(255) NULL,
	details text NULL,
	homepage varchar(255) NULL,
	picture varchar(255) NULL,
	CONSTRAINT person_email_key UNIQUE (email),
	CONSTRAINT person_pkey PRIMARY KEY (id),
	CONSTRAINT person_institutionid_fkey FOREIGN KEY (institutionid) REFERENCES public.institution(id)
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public."session" (
	id SERIAL,
	"name" varchar(255) NULL,
	trackid int4 NULL,
	starttime timestamptz NOT NULL,
	endtime timestamptz NOT NULL,
	chair uuid NULL,
	CONSTRAINT session_pkey PRIMARY KEY (id),
	CONSTRAINT session_chair_fkey FOREIGN KEY (chair) REFERENCES public.person(id),
	CONSTRAINT session_trackid_fkey FOREIGN KEY (trackid) REFERENCES public.track(id)
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public.keyword (
	"name" varchar(255) NOT NULL,
	CONSTRAINT tag_pkey PRIMARY KEY ("name")
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public.paper (
	id SERIAL,
	title varchar(255) NOT NULL,
	abstract text NOT NULL,
	url varchar(255) NULL,
	CONSTRAINT paper_abstract_key UNIQUE (abstract),
	CONSTRAINT paper_pkey PRIMARY KEY (id),
	CONSTRAINT paper_title_key UNIQUE (title),
	CONSTRAINT paper_url_key UNIQUE (url)
)
WITH (
	OIDS=FALSE
);


CREATE TABLE public.event (
	id SERIAL,
	sessionid int4 NULL,
	paperid int4 NULL,
	roomname varchar(255) NULL,
	alias varchar(255) NULL,
	duration time NOT NULL,
	starttime timestamptz NULL,
	kind varchar(255) NULL,
	isexclusive bool NOT NULL,
	maxsize int4 NULL,
	conferenceid int4 NOT NULL,
	CONSTRAINT event_pkey PRIMARY KEY (id),
	CONSTRAINT event_conferenceid_fkey FOREIGN KEY (conferenceid) REFERENCES public.conference(id),
	CONSTRAINT event_kind_fkey FOREIGN KEY (kind) REFERENCES public.kind("name"),
	CONSTRAINT event_paperid_fkey FOREIGN KEY (paperid) REFERENCES public.paper(id) ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT event_roomname_fkey FOREIGN KEY (roomname) REFERENCES public.room("name"),
	CONSTRAINT event_sessionid_fkey FOREIGN KEY (sessionid) REFERENCES public."session"(id)
)
WITH (
	OIDS=FALSE
);

CREATE TABLE EventRessource (
  eventid Integer REFERENCES event(id) ON DELETE CASCADE ON UPDATE CASCADE not null,
  url TEXT not NULL
);


CREATE TABLE public.author (
	paperid int4 NOT NULL,
	personid uuid NOT NULL,
	"number" int4 NOT NULL,
	CONSTRAINT author_pkey PRIMARY KEY (paperid,personid),
	CONSTRAINT author_paperid_fkey FOREIGN KEY (paperid) REFERENCES public.paper(id),
	CONSTRAINT author_personid_fkey FOREIGN KEY (personid) REFERENCES public.person(id)
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public.paperkeyword (
	paperid int4 NOT NULL,
	keyword text NOT NULL,
	CONSTRAINT paperkeyword_pkey PRIMARY KEY (keyword,paperid),
	CONSTRAINT paperkeyword_keyword_fkey FOREIGN KEY (keyword) REFERENCES public.keyword("name") ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT paperkeyword_paperid_fkey FOREIGN KEY (paperid) REFERENCES public.paper(id) ON DELETE CASCADE ON UPDATE CASCADE
)
WITH (
	OIDS=FALSE
);





CREATE TABLE public.personalschedule (
	eventid int4 NOT NULL,
	personid uuid NOT NULL,
	CONSTRAINT personalschedule_pkey PRIMARY KEY (eventid,personid),
	CONSTRAINT personalschedule_eventid_fkey FOREIGN KEY (eventid) REFERENCES public.event(id),
	CONSTRAINT personalschedule_personid_fkey FOREIGN KEY (personid) REFERENCES public.person(id)
)
WITH (
	OIDS=FALSE
);


CREATE TABLE public.favorite (
	eventid int4 NOT NULL,
	personid uuid NOT NULL,
	CONSTRAINT favorite_pkey PRIMARY KEY (eventid,personid),
	CONSTRAINT favorite_eventid_fkey FOREIGN KEY (eventid) REFERENCES public.event(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT favorite_personid_fkey FOREIGN KEY (personid) REFERENCES public.person(id)
)
WITH (
	OIDS=FALSE
);


CREATE TABLE public.roomer_helper (
	eventid int4 NULL,
	roomname text NULL
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public.scheduler_helper (
	eventid int4 NULL,
	"start" timestamp NULL
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public.speaker (
	eventid int4 NOT NULL,
	personid uuid NOT NULL,
	"number" int4 NOT NULL,
	CONSTRAINT speaker_pkey PRIMARY KEY (eventid,personid),
	CONSTRAINT speaker_eventid_fkey FOREIGN KEY (eventid) REFERENCES public.event(id),
	CONSTRAINT speaker_personid_fkey FOREIGN KEY (personid) REFERENCES public.person(id)
)
WITH (
	OIDS=FALSE
);


CREATE TABLE public.userdata (
	personid uuid NOT NULL,
	password varchar(255) NOT NULL,
	token varchar(255) NOT NULL,
	CONSTRAINT userdata_pkey PRIMARY KEY (personid),
	CONSTRAINT userdata_personid_fkey FOREIGN KEY (personid) REFERENCES public.person(id) ON DELETE SET NULL ON UPDATE CASCADE
)
WITH (
	OIDS=FALSE
);

CREATE TABLE public.admin (
	userdataid uuid NOT NULL,
	conferenceid int4 NOT NULL,
	CONSTRAINT admin_pkey PRIMARY KEY (userdataid,conferenceid),
	CONSTRAINT admin_conferenceid_fkey FOREIGN KEY (conferenceid) REFERENCES public.conference(id),
	CONSTRAINT admin_userdataid_fkey FOREIGN KEY (userdataid) REFERENCES public.userdata(personid) ON DELETE SET NULL ON UPDATE CASCADE
)
WITH (
	OIDS=FALSE
);




COMMIT;
