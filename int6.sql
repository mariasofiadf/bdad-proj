.mode	columns
.headers	on
.nullvalue	NULL

--Número de entradas por mês por ordem decrescente
drop VIEW if EXISTS TicketData;
create view TicketData
as select 
strftime('%m', tdate) as month, 
strftime('%Y', tdate) as aYear, clientid, tickettypeid from TicketEntry;


select month,aYear,count(*) as NumberOfEntries 
from TicketData 
group by month,aYear 
order by NumberOfEntries DESC;