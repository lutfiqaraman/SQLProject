CREATE VIEW [dbo].[FullPerson]
	AS
	
	select [persontbl].[FirstName], [persontbl].[LastName], 
		   [addresstbl].[StreetAddress], [addresstbl].[City], 
		   [addresstbl].[State], [addresstbl].[ZipCode]
	from dbo.Person persontbl
	left join dbo.Address addresstbl
	on persontbl.Id = addresstbl.PersonId
