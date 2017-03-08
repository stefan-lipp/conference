CREATE TABLE public.vote (
  eventid int4 NOT NULL,
  personid uuid NOT NULL,
  PRIMARY KEY (eventid,personid),
  CONSTRAINT vote_eventid_fkey FOREIGN KEY (eventid) REFERENCES public.event(id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT vote_personid_fkey FOREIGN KEY (personid) REFERENCES public.person(id) ON DELETE CASCADE ON UPDATE CASCADE
);
