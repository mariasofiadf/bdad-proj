.mode	columns
.headers	on
.nullvalue	NULL


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
      

--
drop VIEW if EXISTS ParticipationDuoCount;
create view ParticipationDuoCount
as SELECT IDAnimal1, Animal1, Animal2, count (*) as DuoCount 
from (SELECT   A1.animalid as IDAnimal1, A1.animalname as Animal1 , A2.animalname as Animal2
	from ActivityAnimalData as A1, ActivityAnimalData as A2 
	where(Animal1 <> Animal2 and A1.activityid = A2.activityid ))
GROUP By Animal2, Animal1;


--[FINAL] Proporção em que um animal participa em atividades com outro
SELECT Animal1, nParticipations, Animal2, DuoCount, round((duoCount *1.0/nParticipations) * 100, 2) as DuoParticipationRate
from ParticipationDuoCount, numberOfParticipations 
where (numberOfParticipations.animalid = ParticipationDuoCount.IDAnimal1);
















