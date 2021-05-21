.mode	columns
.headers	on
.nullvalue	NULL

--Animais que não participam em atividades
SELECT animalname, commonname
FROM Species, Animal 
WHERE Animal.speciesid = Species.speciesid
and Animal.AnimalID not in
( SELECT animalid from Participates);