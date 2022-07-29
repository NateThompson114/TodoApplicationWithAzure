CREATE PROCEDURE [dbo].[pTodo_GetOneAssigned]
	@AssignedTo int,
	@TodoId int
AS
BEGIN
	SELECT Id, Task, AssignedTo, IsComplete
	FROM [dbo].[Todo]
	WHERE AssignedTo = @AssignedTo
		AND Id = @TodoId
END
