.mode	columns
.headers	on
.nullvalue	NULL

--Animais que o cliente viu nos espetáculos

drop VIEW if EXISTS ClientActivityData;
create view ClientActivityData
as select clientname, activityid
from Client Inner JOIN  ActivityTicket USING(clientid);