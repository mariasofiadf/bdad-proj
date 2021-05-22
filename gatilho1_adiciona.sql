--Adicionar pontos ao cliente quando este compra um bilhete de entrada e retirar pontos quando é aplicado desconto. O trigger também define o price paid tal como apresentado no modelo conceptual.
drop TRIGGER if EXISTS addPoints;
CREATE TRIGGER addPoints
AFTER INSERT ON TicketEntry
for EACH row
BEGIN
    UPDATE TicketEntry
    set tepricepaid = (SELECT tprice from TicketType WHERE TicketType.TicketTypeID = New.TicketTypeID)
    				*
                    (1.0 - (SELECT count(*) from Client where New.clientid = Client.clientid and Client.CPoints >= 100)*1.0/2.0)
    where TicketEntry.ticketentryid = New.ticketentryid;
    
    UPDATE Client
    set cPoints = Client.CPoints-100
    WHERE Client.clientid = New.clientid and Client.cpoints >= 100;
    
	UPDATE Client
    set cpoints = cpoints + (SELECT tpoints from TicketType WHERE tickettypeid = New.tickettypeid)
    WHERE Client.ClientID = New.ClientID;                     
END;