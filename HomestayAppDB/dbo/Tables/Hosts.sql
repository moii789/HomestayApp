CREATE TABLE [dbo].[Hosts]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [firstName] NVARCHAR(50) NOT NULL, 
    [lastName] NVARCHAR(50) NOT NULL, 
    [dateOfBirth] DATE NOT NULL, 
    [email] NVARCHAR(50) NOT NULL, 
    [phoneNumber] NVARCHAR(50) NOT NULL, 
    [citizenship] NVARCHAR(50) NOT NULL, 
    [verification] BIT NOT NULL DEFAULT 0
)
