CREATE PROCEDURE [dbo].[spBookings_CheckInGuest]
	@id int
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Booking
	SET checkedIn = 1
	WHERE Id = @id;
END
