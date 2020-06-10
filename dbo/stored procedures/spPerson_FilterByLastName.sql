CREATE PROCEDURE [dbo].[spPerson_FilterByLastName]
	@LastName nvarchar(50)
AS

BEGIN
	select [Id], [FirstName], [LastName] 
	from dbo.Person
	where LastName = @LastName
END
