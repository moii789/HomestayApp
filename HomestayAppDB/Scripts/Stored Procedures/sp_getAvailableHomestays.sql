CREATE PROCEDURE [dbo].[sp_GetAvailableHomestays]
	@arrivalDate date,
	@departureDate date,
	@location char
AS
BEGIN 
	SET NOCOUNT ON;

	SELECT h.name, ht.Title, ht.Description, ht.Price, ho.firstName, ho.lastName, l.locationName
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