CREATE PROCEDURE GetMonthlyPostCounts
AS
BEGIN
    SELECT YEAR(CreationDate) AS Year, MONTH(CreationDate) AS Month, COUNT(*) AS PostCount
    FROM Posts
    GROUP BY YEAR(CreationDate), MONTH(CreationDate)
    ORDER BY Year, Month;
END;