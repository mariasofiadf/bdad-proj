.mode	columns
.headers	on
.nullvalue	NULL

--All activities clients participate in and it's prices
drop VIEW if EXISTS ActivityClientData;
create view ActivityClientData
as select clientid, activityid, atprice
from  (Activity Inner JOIN  ActivityType USING(activitytypeid)) inner join  ActivityTicket USING(activityid);


drop VIEW if EXISTS SpentOnActivities;
create view SpentOnActivities
as select clientid, sum(atprice) as TotalActivities
from  ActivityClientData
Group BY clientid ;

drop VIEW if EXISTS SpentOnEntries;
create view SpentOnEntries
as select clientid, sum(tepricepaid) as TotalEntries
from  TicketEntry
Group BY clientid ;

--Client name and id, and money spent on activities, entries, and the total
SELECT T.clientid, clientname, TotalEntries, TotalActivities, 
(TotalEntries + TotalActivities) as TotalSpent
from (SpentOnActivities join SpentOnEntries USING(clientid)) as T, Client
where (Client.clientid = T.clientid) ;





