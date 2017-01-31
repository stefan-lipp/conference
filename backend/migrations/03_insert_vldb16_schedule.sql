UPDATE event AS e SET starttime = ts.start FROM scheduler_helper ts WHERE ts.eventid=e.id;
UPDATE event AS e SET roomname = r.roomname from roomer_helper r WHERE r.eventid=e.id;
