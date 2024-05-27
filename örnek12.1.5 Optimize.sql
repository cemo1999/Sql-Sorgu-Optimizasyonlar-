CREATE PROCEDURE GetMonthlyPostCounts_Optimized
AS
BEGIN
    SELECT YEAR(CreationDate) AS Year, MONTH(CreationDate) AS Month, COUNT(*) AS PostCount
    FROM Posts WITH (INDEX(IX_Posts_CreationDate))
    GROUP BY YEAR(CreationDate), MONTH(CreationDate)
    ORDER BY Year, Month;
END;