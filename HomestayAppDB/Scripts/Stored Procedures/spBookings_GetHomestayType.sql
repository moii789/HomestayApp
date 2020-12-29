CREATE PROCEDURE [dbo].[spBookings_GetHomestayType]
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP 1 * FROM HomestayType ht
	WHERE ht.Id = @id;
END
