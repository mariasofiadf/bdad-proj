.mode	columns
.headers	on
.nullvalue	NULL

--Nome dos animais ordenados pela proporção absoluta da diferença de peso, em relação à média da espécie

SELECT animalname, commonname, aweight as AnimalWeight, averageweight, 
round(-((averageweight - aweight)/averageweight)*100, 2) as Percentage
from Animal, Species
where (Animal.speciesid = Species.speciesid)
       ORDER BY abs(Percentage) desc;