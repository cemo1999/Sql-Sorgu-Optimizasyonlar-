CREATE PROCEDURE GetUserPosts
    @UserId INT
AS
BEGIN
    SELECT p.Id AS PostId, p.Title, p.CreationDate AS PostCreationDate, u.Id AS UserId, u.DisplayName, u.Reputation
    FROM Posts p
    JOIN Users u ON p.OwnerUserId = u.Id
    WHERE u.Id = @UserId;
END;
