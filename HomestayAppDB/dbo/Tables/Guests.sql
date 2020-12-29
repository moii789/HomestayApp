CREATE TABLE [dbo].[Guests]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [firstName] NVARCHAR(50) NOT NULL, 
    [lastName] NVARCHAR(50) NOT NULL, 
    [email] NVARCHAR(50) NOT NULL, 
    [phoneNumber] NVARCHAR(50) NULL
)
