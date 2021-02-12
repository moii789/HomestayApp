CREATE PROCEDURE [dbo].[spBookings_Insert]
	@guestId int,
	@homestayId int,
	@arrivalDate date,
	@departureDate date,
	@price int

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Booking(guestId, homestayId, arrivalDate, departureDate, totalCost, checkedIn)
	VALUES(@guestId, @homestayId, @arrivalDate, @departureDate, @price, 0);

END
