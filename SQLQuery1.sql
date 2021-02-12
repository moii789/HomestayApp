

DECLARE @arrivalDate date;
DECLARE @departureDate date;
DECLARE @location varchar(250);

set @arrivalDate='01/01/2020';
set @departureDate = '01/03/2020';
set @location = 'Kathmandu';

SELECT h.name, ht.title, ht.description, ht.Price, ho.firstName, ho.lastName, l.locationName
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