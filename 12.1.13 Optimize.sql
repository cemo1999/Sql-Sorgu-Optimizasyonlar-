CREATE PROCEDURE GetTopUsersByReputation_Optimized
    @TopN INT
AS
BEGIN
    SET STATISTICS TIME ON;
    SET STATISTICS IO ON;

    SELECT TOP (@TopN) Id, DisplayName, Reputation
    FROM Users WITH (INDEX(IX_Users_Reputation))
    ORDER BY Reputation DESC;

    SET STATISTICS TIME OFF;
    SET STATISTICS IO OFF;
END;