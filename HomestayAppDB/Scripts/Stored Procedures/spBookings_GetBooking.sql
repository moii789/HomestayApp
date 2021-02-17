CREATE PROCEDURE [dbo].[spBookings_GetBooking]
	@firstName varchar(250),
	@lastName varchar(250),
	@Id int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP 1 g.firstName, g.lastName, b.arrivalDate, b.departureDate,
	h.name AS homestayName, ht.title as homestayTypeTitle, l.locationName, ho.firstName as hostFirstName, 
	ho.lastName as hostLastName, b.totalCost, b.Id as bookingId
	FROM Booking b
	INNER JOIN Homestays h
	ON b.homestayId = h.id
	INNER JOIN HomestayType ht
	ON h.homestayTypeId = ht.Id
	INNER JOIN Location l
	ON h.locationId = l.Id
	INNER JOIN Hosts ho
	ON h.hostId = ho.Id
	INNER JOIN Guests g
	On b.guestId = g.Id
	WHERE b.Id = @Id
	AND g.firstName = @firstName
	AND g.lastName = @lastName;
END
