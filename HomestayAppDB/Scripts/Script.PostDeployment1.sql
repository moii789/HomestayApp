﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
if not exists (SELECT 1 FROM dbo.HomestayType)
begin 
    insert into dbo.HomestayType(title,description, amenities,price)
    values('village hut', 'experience living in a village hut in a village', 'few', 10),
    ('farm','experience living in a farm in Nepal','few',10),
    ('city home', 'experience living in a bustling city in Nepal', 'many', 15);
end


if not exists (SELECT 1 FROM dbo.Hosts)
begin 
    insert into dbo.Hosts(firstName, lastName, dateOfBirth, email, phoneNumber,citizenship, verification)
    values('Ram', 'Khanal', '08/09/1991', 'ram@gmail.com', '9851068543', 'Nepalese', 1),
   ('Rita', 'Magar', '02/05/1984', 'sita@gmail.com', '9851065378', 'Nepalese', 1),
    ('Anju', 'Acharya', '01/02/1995', 'anju@gmail.com', '9851157384', 'Nepalese', 1);
end

if not exists (SELECT 1 FROM dbo.Location)
begin 
    insert into dbo.Location(locationName, district, province)
    values('Kathmandu', 'Kathmandu', 'Bagmati' ),
    ('Bharatpur', 'Chitwan','Bagmati'),
    ('Pokhara', 'Kaski','Gandaki'),
    ('Lumbini', 'Rupahendi','Lumbini'),
    ('Pokhara', 'Kaski','Gandaki'),
    ('Village of Langtang','Rasuwa','Bagmati'),
    ('Jomsom', 'Mustang', 'Gandaki');

end

if not exists (SELECT 1 FROM dbo.Homestays)
begin
    declare @homestayType1 int;
    declare @homestayType2 int;
    declare @homestayType3 int;

    select @homestayType1 = Id FROM dbo.HomestayType WHERE title = 'village hut';
    select @homestayType2 = Id FROM dbo.HomestayType WHERE title = 'village hut';
    select @homestayType3 = Id FROM dbo.HomestayType WHERE title = 'village hut';

    declare @host1 int;
    declare @host2 int;
    declare @host3 int;

    select @host1 = Id FROM dbo.Hosts WHERE firstName ='Ram';
    select @host2 = Id FROM dbo.Hosts WHERE firstName ='Rita';
    select @host3 = Id FROM dbo.Hosts WHERE firstName ='Anju';

    declare @location1 int;
    declare @location2 int;
    declare @location3 int;

    select @location1 = Id from dbo.Location WHERE locationName = 'Kathmandu';
    select @location2 = Id from dbo.Location WHERE locationName = 'Jomsom';
    select @location3 = Id from dbo.Location WHERE locationName = 'Pokhara';

    insert into dbo.Homestays(locationId, homestayTypeId, hostId)
    values(@location1, @homestayType3, @host1),
    (@location2, @homestayType1, @host2),
    (@location3, @homestayType2, @host3);
end
