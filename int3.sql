.mode	columns
.headers	on
.nullvalue	NULL

--Todos os habitats com felinos, e o respetivo número de animais nesses habitats

SELECT hname as HabitatName, commonname, scientificname, COUNT (*) as NumberOfAnimals
FROM Species, Habitat, AnimalGroup, Animal
WHERE (Species.animalgroupid = AnimalGroup.animalgroupid 
       AND AnimalGroup.AGroupName = "Felinos"
       and Species.habitatid = Habitat.habitatid
       and Species.speciesid = animal.speciesid)
GROUP BY Animal.speciesid;