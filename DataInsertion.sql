INSERT INTO Vehicle(Engine_Number, License_Plate_Number, Brand_Name, Model, Color)
VALUES ('PWER9938', 'MH12QQ5904', 'KTM', 'Duke 200cc', 'Orange'),
		('KRWS5478', 'MH30GR4589', 'Bajaj', 'Pulsar 150cc', 'Black'),
		('QIRT9567', 'MH14PP2354', 'Hero', 'Splendor plus', 'Red'),
		('ALOI2456', 'MH12JK7773', 'BMW', 'Cruzer 350cc', 'Blue'),
		('NMHY8394', 'MH30SA5476', 'Bajaj', 'Activa', 'White');


INSERT INTO STAFF(Name, Joining_Date, Address, Salary)
VALUES ('John Doe', '2012-01-05', '15, Yemen road, Yemen!', 25000),
	('Samuel Winchester', '2015-04-25', 'Minnesota', 30000),
	('Sherlock Holmes', '2018-07-12', '12th Street, Bakers Road, London.', 35000),
	('Jamie Lannister', '2017-04-05', 'The red palance, Kingslanding, Westeros', 40000),
	('John Winchester', '2015-04-25', 'Minnesota', 45000);

INSERT INTO Customer(Name, Identification_Number, Identification_Number_Type, Address)
VALUES ('Samuel', '6460 1245 4563', 'AADHAR', '15, Yemen road, Yemen.'),
	('Barney Stinson', '4568 4581 2145', 'AADHAR', '17-a, Yemen road, Yemen.'),
	('Neil Tyson', '1254 8734 9875', 'AADHAR', '18-a, Yemen road, Yemen.'),
	('Joe Rogan', '2546 5487 5432', 'AADHAR', '19-a, Yemen road, Yemen.'),
	('John Cena', 'AWP6578543', 'PAN', '12-a, Yemen road, Yemen.');


INSERT INTO Servicing_Visit(Visit_Date, Customer_Id, Vehicle_Id, Serviced_By, Total_Cost)
VALUES ('2019-10-12 09:00', 1, 1, 1, 1000),
	('2019-10-12 12:15', 2, 2, 2, 800),
	('2019-10-12 13:10', 3, 3, 3, 450),
	('2019-10-13 09:00', 4, 4, 4, 1200),
	('2019-10-13 09:00', 5, 5, 5, 1500);


INSERT INTO Procedure_Detail(Name, Cost)
VALUES ('Oil Change', 250),
	('Air Filter Change', 500),
	('Water Servicing', 150),
	('Polish', 100),
	('Air change', 50);

 
INSERT INTO Procedures_Done(Service_visit_Id, Procedure_Id)
VALUES (1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 2),
	(2, 5),
	(3, 1),
	(3, 4),
	(4, 1),
	(4, 3),
	(4, 2),
	(5, 1),
	(5, 2),
	(5, 4);
