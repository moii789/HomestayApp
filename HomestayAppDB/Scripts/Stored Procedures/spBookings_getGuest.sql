CREATE PROCEDURE [dbo].[spBookings_GetGuest]
	@firstName varchar(250),
	@lastName varchar(250),
	@email varchar(250),
	@phoneNumber varchar(250)
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
