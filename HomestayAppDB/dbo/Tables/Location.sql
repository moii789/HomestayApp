CREATE TABLE [dbo].[Location]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [locationName] NVARCHAR(50) NOT NULL, 
    [district] NVARCHAR(50) NOT NULL, 
    [province] NVARCHAR(50) NOT NULL
)
