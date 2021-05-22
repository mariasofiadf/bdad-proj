.mode	columns
.headers	on
.nullvalue	NULL

--    
--Se tiver visto o animal mais que uma vez, aparece a mais recente [Menos Perminente]

drop VIEW if EXISTS ActivityData;
create view ActivityData
as select clientid, atname, activityid, starttime
from  (Activity Inner JOIN  ActivityType USING(activitytypeid)) inner join  ActivityTicket USING(activityid);

SELECT  animalname, atname as ActivityName, starttime
from Client, ActivityData, Participates, Animal
where(ActivityData.clientid = client.clientid and 
      Client.ClientName = "Maria Miguel Diogo Figueiredo" AND
      Participates.animalid = Animal.animalid AND
      Participates.ActivityID = ActivityData.activityid)
      group by Animal.animalid
      ORDER By starttime desc;

