CREATE PROCEDURE GetCommentsWithPostUserDetails
    @PostId INT
AS
BEGIN
    SET STATISTICS TIME ON;
    SET STATISTICS IO ON;

    SELECT c.Id, c.Text, c.CreationDate, p.Title, u.DisplayName
    FROM Comments c
    JOIN Posts p ON c.PostId = p.Id
    JOIN Users u ON c.UserId = u.Id
    WHERE c.PostId = @PostId;

    SET STATISTICS TIME OFF;
    SET STATISTICS IO OFF;
END;