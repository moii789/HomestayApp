CREATE TABLE [dbo].[Booking]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [guestId] INT NOT NULL, 
    [homestayId] INT NOT NULL, 
    [arrivalDate] DATE NOT NULL, 
    [departureDate] DATE NOT NULL, 
    [totalCost] MONEY NOT NULL, 
    CONSTRAINT [FK_Booking_ToGuests] FOREIGN KEY (guestId) REFERENCES Guests(Id), 
    CONSTRAINT [FK_Booking_ToHomestays] FOREIGN KEY (homestayId) REFERENCES Homestays(Id)

)
