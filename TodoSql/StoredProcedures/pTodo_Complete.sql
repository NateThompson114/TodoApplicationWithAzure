CREATE PROCEDURE [dbo].[pTodo_Complete]
	@Complete bit,
	@AssignedTo int,
	@TodoId int
AS
BEGIN
	UPDATE [dbo].[Todo]
	SET IsComplete = @Complete
	WHERE AssignedTo = @AssignedTo
		AND Id = @TodoId
END
