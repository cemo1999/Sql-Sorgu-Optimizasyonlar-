CREATE PROCEDURE GetPostsByDateRange
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SET STATISTICS TIME ON;
    SET STATISTICS IO ON;

    SELECT p.Id, p.Title, p.CreationDate, u.DisplayName, u.Reputation
    FROM Posts p
    JOIN Users u ON p.OwnerUserId = u.Id
    WHERE p.CreationDate BETWEEN @StartDate AND @EndDate;

    SET STATISTICS TIME OFF;
    SET STATISTICS IO OFF;
END;