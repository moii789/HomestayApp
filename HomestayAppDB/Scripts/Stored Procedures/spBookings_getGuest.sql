CREATE PROCEDURE [dbo].[spBookings_GetGuest]
	@firstName char,
	@lastName char,
	@email char,
	@phonenumber char
AS
BEGIN
	SET NOCOUNT ON;
 
	IF NOT EXISTS (SELECT 1 FROM Guests g WHERE g.email = @email)
		BEGIN
			INSERT INTO Guests(firstName, lastName, email, phoneNumber)
			VALUES (@firstName, @lastName, @email, @phoneNumber);
		END

	SELECT TOP 1 * FROM Guests g 
	WHERE g.email = @email;
END
