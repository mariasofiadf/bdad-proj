.mode	columns
.headers	on
.nullvalue	NULL

--Animais que atuaram em todos os espétáculos de um certo tipo

--Proporção em que um animal participa em atividades com outro

--Number of activities with more than two animals participating
drop VIEW if EXISTS activitiesWithMoreThan2;
create view activitiesWithMoreThan2
as SELECT * from 
(SELECT Participates.activityid, atname, count(*) as numberOfAnimals
from Participates, ActivityType, Activity
WHERE Activity.activitytypeid = ActivityType.activitytypeid
and Participates.ActivityID = Activity.activityid
GROUP By Participates.activityid)
where numberOfAnimals > 1;

--Number of participations of each animal
drop VIEW if EXISTS numberOfParticipations;
create view numberOfParticipations
as SELECT animalid, count(*) as nParticipations
from Participates
GROUP by animalid;





SELECT * from numberOfParticipations;
--SELECT * from activitiesWithMoreThan2;

