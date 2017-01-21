UPDATE event AS e SET "startTime" = ts."start" FROM scheduler_helper ts WHERE ts."eventId"=e.id;
UPDATE event AS e SET "roomName" = r."roomName" from roomer_helper r WHERE r."eventId"=e.id;
