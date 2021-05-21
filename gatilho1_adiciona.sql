--Adicionar pontos ao cliente quando este compra um bilhete de entrada
CREATE TRIGGER IF NOT EXISTS addPoints
Before INSERT ON TicketEntry
FOR EACH ROW
begin 
	UPDATE Client
    set cpoints = cpoints + (SELECT tpoints from TicketType WHERE tickettypeid = New.tickettypeid)
    WHERE Client.ClientID = New.ClientID;
end;