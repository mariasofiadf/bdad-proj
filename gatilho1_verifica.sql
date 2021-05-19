.mode columns
.header on
.nullvalue NULL

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

.print ''
SELECT tickettypeid, tpoints from TicketType WHERE TicketType.TicketTypeID = 2;

.print ''
SELECT clientid, cpoints from Client where clientid = 0;