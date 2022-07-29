CREATE PROCEDURE [dbo].[pTodo_GetAllAssigned]
	@AssignedTo int
AS
BEGIN
	SELECT Id, Task, AssignedTo, IsComplete
	FROM [dbo].[Todo]
	WHERE AssignedTo = @AssignedTo
END
