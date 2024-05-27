SET STATISTICS TIME ON;
SET STATISTICS IO ON;

EXEC UpdateUserDetails @UserId = 1, @DisplayName = 'John Doe', @Reputation = 1000;

SET STATISTICS TIME OFF;
SET STATISTICS IO OFF;
