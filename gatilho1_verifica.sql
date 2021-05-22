.mode columns
.header on
.nullvalue NULL

.print 'Número de pontos antes da compra'
SELECT clientid, cpoints from Client where clientid = 0;

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-04-03",
    22.50,
    0,
    2 --Adulto
);

.print 'Pontos a adicionar'
SELECT tickettypeid, tpoints  from TicketType WHERE TicketType.TicketTypeID = 2;

.print ''
.print 'Número de pontos após a compra'
SELECT clientid, cpoints from Client where clientid = 0;


.print ''
.print 'Preço da primeira compra, sem desconto'
.print ''
SELECT TPrice as InitialPrice, TEPricePaid as FinalPrice
from TicketEntry, TicketType
WHERE TicketEntry.ClientID = 0 and TicketEntry.TDate =  "2021-04-03"
    and TicketType.tickettypeid = TicketEntry.tickettypeid;

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-04-04",
    22.50,
    0,
    2 --Adulto
);

.print ''
.print 'Preço da segunda compra, onde foi aplicaçado desconto'
.print ''
SELECT TPrice as InitialPrice, TEPricePaid as FinalPrice
from TicketEntry, TicketType
WHERE TicketEntry.ClientID = 0 and TicketEntry.TDate =  "2021-04-04"
    and TicketType.tickettypeid = TicketEntry.tickettypeid;
