.mode columns
.header on
.nullvalue NULL
update habitat set hopeningtime = "09:00:00", hclosingtime = "17:30:00" WHERE habitatid = 2;
update habitat set hopeningtime = "10:00:00", hclosingtime = "18:30:00" WHERE habitatid = 3;
update habitat set hopeningtime = "10:00:00", hclosingtime = "18:30:00" WHERE habitatid = 4;
update Zone set zopeningtime = "09:00:00", zclosingtime = "19:00:00" where zoneid = 1;

SELECT zoneid, hname, hopeningtime, hclosingtime from Habitat WHERE zoneid = 1;
update Zone set zopeningtime = "09:50:00", zclosingtime = "18:00:00" where zoneid = 1;

.print ''
.print 'A zona com id 1 passa a abrir às 09:50:00 e a fechar às 18:00:00'
.print ''

SELECT zoneid, hname, hopeningtime, hclosingtime from Habitat WHERE zoneid = 1;