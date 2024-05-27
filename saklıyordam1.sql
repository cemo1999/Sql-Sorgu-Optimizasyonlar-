CREATE PROCEDURE GetUserDetails
    @UserId INT
AS
BEGIN
    SELECT Id, DisplayName, Reputation, CreationDate, LastAccessDate
    FROM Users
    WHERE Id = @UserId;
END;
