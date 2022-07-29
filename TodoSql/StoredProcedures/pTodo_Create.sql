CREATE PROCEDURE [dbo].[pTodo_Create]
	@Task nvarchar(255),
	@AssignedTo int
AS
BEGIN
	INSERT INTO [dbo].[Todo](Task,AssignedTo)
	VALUES(@Task,@AssignedTo);

	SELECT Id, Task, AssignedTo, IsComplete
	FROM [dbo].[Todo]
	WHERE Id = SCOPE_IDENTITY();
	-- Don't use @@Identity it gives the last id created in the entire db, 
	--	so if two task that are created at the same time by two different people, 
	--	you will get whatever one in the ENTIRE db was last created, the scope is scoped to the transaction	 of THIS call
END
