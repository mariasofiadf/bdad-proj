.mode	columns
.headers	on
.nullvalue	NULL

drop VIEW if EXISTS ParticipationsPerMonthPerActivity;
create view ParticipationsPerMonthPerActivity
as SELECT ActivityType.activitytypeid, Animal.animalid,  strftime('%m', starttime) as month,
strftime('%Y', starttime) as aYear,  count(*) as nParticipations
from Participates, Animal, Activity, ActivityType
where (Animal.animalid = Participates.animalid and 
      Activity.ActivityID = Participates.activityid
      and Activity.activitytypeid = ActivityType.activitytypeid)
GROUP by Activity.activitytypeid, Animal.animalid, month, aYear;

SELECT * from ParticipationsPerMonthPerActivity;

drop VIEW if EXISTS ActiTypeCountPerMonth;
create view ActiTypeCountPerMonth
as SELECT ActivityType.ActivityTypeID, 
strftime('%m', starttime) as month, strftime('%Y', starttime) as aYear,
count(*) as actPerMonth
from Activity, ActivityType
WHERE (Activity.activitytypeid = ActivityType.activitytypeid)
GROUP by  Activity.activitytypeid, month, aYear;

SELECT * from ActiTypeCountPerMonth;

--Nome dos animais que participaram em todas os espetáculos do mês de determinada atividade
SELECT atname, animalname, ACM.month, PMA.aYear
from ActiTypeCountPerMonth as ACM, ParticipationsPerMonthPerActivity as PMA,
Animal, ActivityType
WHERE (ACM.actPerMonth = PMA.nParticipations
       and ACM.month = PMA.month
      and  ACM.aYear = PMA.aYear
      and ACM.activitytypeid = PMA.activitytypeid
      and Animal.AnimalID = PMA.animalid
      and PMA.activitytypeid = ActivityType.activitytypeid);

