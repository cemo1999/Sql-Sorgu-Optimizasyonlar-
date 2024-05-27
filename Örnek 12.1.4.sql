CREATE PROCEDURE GetPostsByUserWithScore
@UserId INT
AS
BEGIN
SELECT p.Id, p.Title, p.Score, u.DisplayName
FROM Posts p
JOIN Users u ON p.OwnerUserId = u.Id
WHERE p.OwnerUserId = @UserId;
END;
