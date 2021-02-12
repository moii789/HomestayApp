CREATE PROCEDURE [dbo].[sp_GetAvailableHomestays]
	@arrivalDate date,
	@departureDate date,
	@location varchar(250)
AS
BEGIN 
	SET NOCOUNT ON;

	IF @location = '--Select--'
		SELECT h.name, ht.title, ht.description, ht.price, ho.firstName, ho.lastName
		FROM Homestays h
		INNER JOIN HomestayType ht
		ON h.homestayTypeId = ht.Id
		INNER JOIN Hosts ho
		ON h.hostId = ho.Id
		INNER JOIN Location l
		ON h.locationId = l.Id
		WHERE h.Id NOT IN 
		(SELECT b.homestayId FROM Booking b
		WHERE ((@arrivalDate >= b.arrivalDate AND @arrivalDate <= b.departureDate)
		OR (@arrivalDate <= b.arrivalDate AND @departureDate >= b.arrivalDate))
		);
		
	ELSE
		SELECT h.name, ht.title, ht.description, ht.price, ho.firstName, ho.lastName
		FROM Homestays h
		INNER JOIN HomestayType ht
		ON h.homestayTypeId = ht.Id
		INNER JOIN Hosts ho
		ON h.hostId = ho.Id
		INNER JOIN Location l
		ON h.locationId = l.Id
		WHERE l.locationName = @location
		AND h.Id NOT IN 
		(SELECT b.homestayId FROM Booking b
		WHERE ((@arrivalDate >= b.arrivalDate AND @arrivalDate <= b.departureDate)
		OR (@arrivalDate <= b.arrivalDate AND @departureDate >= b.arrivalDate))
		);
END