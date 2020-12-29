CREATE TABLE [dbo].[Homestays]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [locationId] INT NOT NULL, 
    [homestayTypeId] INT NOT NULL, 
    [hostId] INT NOT NULL, 
    [name] NVARCHAR(50) NULL , 
    CONSTRAINT [FK_Homestays_ToLocation] FOREIGN KEY (locationId) REFERENCES Location(Id), 
    CONSTRAINT [FK_Homestays_ToHomestayType] FOREIGN KEY (homestayTypeId) REFERENCES HomestayType(Id), 
    CONSTRAINT [FK_Homestays_ToHosts] FOREIGN KEY (hostId) REFERENCES Hosts(Id)

)
