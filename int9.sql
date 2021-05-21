.mode	columns
.headers	on
.nullvalue	NULL

--Percentagem de espécies em cada habitat
drop VIEW if EXISTS AnimalHabitat;
create view AnimalHabitat
as SELECT  Habitat.habitatid , hname,  Species.speciesid, commonname
FROM Animal, Species, Habitat
WHERE (Animal.speciesid = Species.speciesid 
       and Species.habitatid = Habitat.habitatid);
       
--Número de total de animais em cada habitat
drop VIEW if EXISTS AnimalHabitatCount;
create view AnimalHabitatCount
as select habitatid, count(*) as TotalOfAnimals
from AnimalHabitat
group BY habitatid;

--Número de animais de cada espécie nos habitats
drop VIEW if EXISTS SpeciesHabitatCount;
create view SpeciesHabitatCount
as select habitatid, speciesid, count(*) as SpeciesCount
from AnimalHabitat
group BY SpeciesID;


SELECT DISTINCT hname as Habitat,  commonname as Species,
round(SpeciesCount * 1.0 /TotalOfAnimals *100, 2 )as Percentage
from AnimalHabitatCount, AnimalHabitat, SpeciesHabitatCount
where AnimalHabitatCount.habitatid = AnimalHabitat.habitatid
	and SpeciesHabitatCount.speciesid = AnimalHabitat.speciesid
    group by hname, commonname;



