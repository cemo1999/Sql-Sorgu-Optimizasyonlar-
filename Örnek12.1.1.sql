CREATE PROCEDURE GetPostsByDateRange
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT p.Id, p.Title, p.CreationDate, u.DisplayName, u.Reputation
    FROM Posts p
    JOIN Users u ON p.OwnerUserId = u.Id
    WHERE p.CreationDate BETWEEN @StartDate AND @EndDate;
END;
