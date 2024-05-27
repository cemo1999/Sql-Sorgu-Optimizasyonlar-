DROP INDEX IX_PostTypes_Id ON PostTypes

SET STATISTICS TIME ON;
SET STATISTICS IO ON;

SELECT *
FROM Posts
JOIN PostTypes ON Posts.PostTypeId = PostTypes.Id
WHERE PostTypes.Id = 1;  -- �rne�in, 1 id'sine sahip post t�r�

SET STATISTICS TIME OFF;
SET STATISTICS IO OFF;
