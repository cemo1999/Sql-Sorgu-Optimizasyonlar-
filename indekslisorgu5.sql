CREATE INDEX IX_Posts_OwnerUserId_Score ON Posts(OwnerUserId, Score);
SET STATISTICS TIME ON;
SET STATISTICS IO ON;
SELECT Users.DisplayName, AVG(Posts.Score) AS AverageScore
FROM Users
JOIN Posts ON Users.Id = Posts.OwnerUserId
GROUP BY Users.DisplayName
ORDER BY AverageScore DESC;
SET STATISTICS TIME OFF;
SET STATISTICS IO OFF;
