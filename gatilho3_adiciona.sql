--Verifica se o tempo de um habitat bate certo com da zona onde se encontra
--Caso não esteja, dá update do horário dos habitats

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