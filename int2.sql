.mode	columns
.headers	on
.nullvalue	NULL

--Número de animais em cada habitat[]
/*SELECT hname as HabitatName, count(*) as NumberOfAnimals
FROM Animal, Species, Habitat
WHERE (Animal.speciesid = Species.speciesid 
       and Species.habitatid = Habitat.habitatid )
GROUP BY Habitat.habitatid;*/