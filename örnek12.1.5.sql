CREATE PROCEDURE GetMonthlyPostCounts
AS
BEGIN
    SET STATISTICS TIME ON;
    SET STATISTICS IO ON;

    SELECT YEAR(CreationDate) AS Year, MONTH(CreationDate) AS Month, COUNT(*) AS PostCount
    FROM Posts
    GROUP BY YEAR(CreationDate), MONTH(CreationDate)
    ORDER BY Year, Month;

    SET STATISTICS TIME OFF;
    SET STATISTICS IO OFF;
END;