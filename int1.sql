.mode	columns
.headers	on
.nullvalue	NULL

--Animais que vivem num Habitat específico()

SELECT animalname, commonname, scientificname 
FROM Animal, Species, Habitat
WHERE (Animal.speciesid = Species.speciesid 
       and Species.habitatid = Habitat.habitatid 
       and Habitat.hname = "Amazónia");

.print ''
.print ''  

SELECT animalname, commonname, scientificname 
FROM Animal, Species, Habitat
WHERE (Animal.speciesid = Species.speciesid 
       and Species.habitatid = Habitat.habitatid 
       and Habitat.hname = "Templo dos Primatas");

.print ''
.print ''  
SELECT animalname, commonname, scientificname 
FROM Animal, Species, Habitat
WHERE (Animal.speciesid = Species.speciesid 
       and Species.habitatid = Habitat.habitatid 
       and Habitat.hname = "Floresta Siberiana");

.print ''
.print ''  
SELECT animalname, commonname, scientificname 
FROM Animal, Species, Habitat
WHERE (Animal.speciesid = Species.speciesid 
       and Species.habitatid = Habitat.habitatid 
       and Habitat.hname = "Floresta do Jaguar");

.print ''
.print ''       
SELECT animalname, commonname, scientificname 
FROM Animal, Species, Habitat
WHERE (Animal.speciesid = Species.speciesid 
       and Species.habitatid = Habitat.habitatid 
       and Habitat.hname = "Savana");