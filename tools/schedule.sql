UPDATE event as e set starttime = ts.start from scheduler_helper ts where ts.eventid=e.id;
UPDATE event as e set roomname = r.roomname from roomer_helper r where r.eventid=e.id;
