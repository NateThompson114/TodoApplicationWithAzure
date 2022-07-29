CREATE PROCEDURE [dbo].[pTodo_Update]
	@Task nvarchar(255),
	@AssignedTo int,
	@TodoId int
AS
BEGIN
	UPDATE [dbo].[Todo]
	SET Task = @Task
	WHERE AssignedTo = @AssignedTo
		AND Id = @TodoId
END
