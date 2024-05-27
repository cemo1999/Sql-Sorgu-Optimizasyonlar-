CREATE PROCEDURE GetTopUsersByReputation
    @TopN INT
AS
BEGIN
    SELECT TOP (@TopN) Id, DisplayName, Reputation
    FROM Users
    ORDER BY Reputation DESC;
END;