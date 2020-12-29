CREATE TABLE [dbo].[HomestayType]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [title] NVARCHAR(50) NOT NULL, 
    [description] NTEXT NOT NULL, 
    [amenities] NTEXT NOT NULL, 
    [price] MONEY NOT NULL
)
