CREATE PROCEDURE GetPostsByUserWithScore_Optimized
    @UserId INT
AS
BEGIN
    SELECT p.Id, p.Title, p.Score, u.DisplayName
    FROM Posts p WITH (INDEX(IX_Posts_UserId_Score))
    JOIN Users u WITH (INDEX(PK_Users_Id)) ON p.OwnerUserId = u.Id
    WHERE p.OwnerUserId = @UserId;
END;