.mode	columns
.headers	on
.nullvalue	NULL

--Animais que atuaram em todos os espétáculos de um certo tipo

--Proporção em que um animal participa em atividades com outro

--Number of activities with more than two animals participating
--drop VIEW if EXISTS activitiesWithMoreThan2;
--create view activitiesWithMoreThan2
--as SELECT * from 
--(SELECT Participates.activityid, atname, count(*) as numberOfAnimals
--from Participates, ActivityType, Activity
--WHERE Activity.activitytypeid = ActivityType.activitytypeid
--and Participates.ActivityID = Activity.activityid
---GROUP By Participates.activityid)
--where numberOfAnimals > 1;

--Number of participations of each animal
drop VIEW if EXISTS numberOfParticipations;
create view numberOfParticipations
as SELECT animalid, count(*) as nParticipations
from Participates
GROUP by animalid;


drop VIEW if EXISTS ActivityAnimalData;
create view ActivityAnimalData
as SELECT Participates.activityid,animalname, Animal.animalid
from  Animal, Participates
where(Participates.animalid = Animal.animalid);
      
SELECT * from ActivityAnimalData;
--SELECT * from activitiesWithMoreThan2;

--Animals participating with eachother
--drop VIEW if EXISTS ParticipationDuo;
--create view ParticipationDuo
--as SELECT A1.activityid, A1.animalid as IDAnimal1, A1.animalname as Animal1 ,  A2.animalname as Animal2
--from animal2 as A1, animal2 as A2 
--where(Animal1 <> Animal2 and A1.activityid = A2.activityid );

--SELECT * from ParticipationDuo;

drop VIEW if EXISTS ParticipationDuoCount;
create view ParticipationDuoCount
as SELECT IDAnimal1, Animal1, Animal2, count (*) as DuoCount 
from (SELECT A1.activityid,  A1.animalid as IDAnimal1, A1.animalname as Animal1 , A2.animalname as Animal2
	from ActivityAnimalData as A1, ActivityAnimalData as A2 
	where(Animal1 <> Animal2 and A1.activityid = A2.activityid ))
GROUP By Animal2, Animal1;

SELECT * from ParticipationDuoCount;

SELECT Animal1, nParticipations, Animal2, DuoCount, (duoCount /nParticipations) * 100 as DuoParticipationRate
from ParticipationDuoCount, numberOfParticipations 
where (numberOfParticipations.animalid = ParticipationDuoCount.IDAnimal1);
















