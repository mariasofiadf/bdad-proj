.mode	columns
.headers	on
.nullvalue	NULL


.print ''
.print ''  
--Animais que vivem num Habitat específico()

SELECT animalname, commonname,  hname
FROM Animal, Species, Habitat
WHERE (Animal.speciesid = Species.speciesid 
       and Species.habitatid = Habitat.habitatid)
GROUP by hname, animalname;


