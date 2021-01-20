CREATE PROCEDURE [dbo].[spBookings_GetHomestay]
	@homestayName varchar(250)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP 1 * FROM Homestays h 
	WHERE h.name = @homestayName;
END
