--Só deixa adicicionar se não existir um animal de outro grupo

CREATE TRIGGER IF NOT EXISTS placeSpecies
Before INSERT ON Species
FOR EACH ROW
when EXISTS (SELECT * from Species WHERE Species.habitatid = new.HabitatID 
             and Species.animalgroupid != new.animalgroupid)
begin 
	SELECT RAISE(ABORT, "Habitat inválido. Habitat com espécies de outro grupo");
end;