.mode	columns
.headers	on
.nullvalue	NULL

--Animal mais pesado de cada espécie
--segundo animal mais pesado sem usar max() e o limit()
SELECT commonname, animalname, maxWeight
from (SELECT commonname, animalid, Animal.speciesid, max(aweight) maxWeight
      FROM Animal, Species WHERE Animal.speciesid = species.speciesid
      GROUP BY Animal.speciesid) A, Animal
WHERE A.animalid = animal.animalid
and Animal.aweight = A.maxWeight;