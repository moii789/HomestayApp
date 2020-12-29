CREATE PROCEDURE [dbo].[spBookings_GetHomestay]
	@homestayName char
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP 1 * FROM Homestays h 
	WHERE h.name = @homestayName;
END
