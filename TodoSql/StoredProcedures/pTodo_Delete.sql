CREATE PROCEDURE [dbo].[pTodo_Delete]
	@AssignedTo int,
	@TodoId int
AS
BEGIN
	DELETE FROM [dbo].[Todo]
	WHERE AssignedTo = @AssignedTo
		AND Id = @TodoId
END
