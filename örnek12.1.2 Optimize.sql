CREATE PROCEDURE GetCommentsWithPostUserDetails_Optimized
    @PostId INT
AS
BEGIN
    SELECT c.Id, c.Text, c.CreationDate, p.Title, u.DisplayName
    FROM Comments c WITH (INDEX(IX_Comments_PostId))
    JOIN Posts p WITH (INDEX(PK_Posts_Id)) ON c.PostId = p.Id
    JOIN Users u WITH (INDEX(PK_Users_Id)) ON c.UserId = u.Id
    WHERE c.PostId = @PostId;
END;