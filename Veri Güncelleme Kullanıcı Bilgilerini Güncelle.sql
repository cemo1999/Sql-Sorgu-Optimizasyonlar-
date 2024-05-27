CREATE PROCEDURE UpdateUserDetails
    @UserId INT,
    @DisplayName NVARCHAR(50),
    @Reputation INT
AS
BEGIN
    UPDATE Users
    SET DisplayName = @DisplayName, Reputation = @Reputation
    WHERE Id = @UserId;
END;
