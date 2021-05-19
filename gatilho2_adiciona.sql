CREATE TRIGGER IF NOT EXISTS placeSpecies
Before INSERT ON Species
FOR EACH ROW
when EXISTS (SELECT * from Species WHERE Species.habitatid = new.HabitatID 
             and Species.animalgroupid != new.animalgroupid)
begin 
	SELECT RAISE(ABORT, "Habitat inválido. Habitat com es+écies de outro grupo");
end;