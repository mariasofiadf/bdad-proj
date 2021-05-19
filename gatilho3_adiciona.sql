CREATE TRIGGER IF NOT EXISTS checkTime
After UPDATE ON Zone
FOR EACH ROW
BEGIN
	UPDATE Habitat
    SET hopeningtime = new.zopeningtime
    WHERE (new.zopeningtime > hopeningtime AND new.zoneid = Habitat.zoneid);
    UPDATE Habitat
    SET hclosingtime = new.zclosingtime
    WHERE (new.zclosingtime < hclosingtime AND new.zoneid = Habitat.zoneid);
END;