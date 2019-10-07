CREATE TABLE Vehicle (
	Identifier BIGINT NOT NULL AUTO_INCREMENT,
	Engine_Number varchar(255) NOT NULL,
	License_Plate_Number varchar(255) NOT NULL,
	Brand_Name varchar(255) NOT NULL,
	Model varchar(255) NOT NULL,
	Color varchar(255) DEFAULT NULL,
	PRIMARY KEY (Identifier),
	UNIQUE INDEX IDX_UNQ_VEHICLE_ENGINE_NO (Engine_Number)
);


CREATE TABLE Staff (
	Identifier BIGINT NOT NULL AUTO_INCREMENT,
	Name varchar(255) NOT NULL,
	Joining_Date Date NOT NULL,
	Address text DEFAULT NULL,
	Salary bigint DEFAULT NULL,
	PRIMARY KEY (Identifier),
	INDEX IDX_STAFF_NAME (Name)
);


CREATE TABLE Customer (
	Identifier BIGINT NOT NULL AUTO_INCREMENT,
	Name varchar(255) NOT NULL,
	Identification_Number varchar(50) DEFAULT NULL,
	Identification_Number_Type varchar(50) DEFAULT NULL,
	Address text DEFAULT NULL,
	PRIMARY KEY (Identifier),
	UNIQUE INDEX IDX_UNQ_CUST_ID_NUM (Identification_Number)
);


CREATE TABLE Servicing_Visit (
	Identifier BIGINT NOT NULL AUTO_INCREMENT,
	Visit_Date Datetime NOT NULL,
	Customer_Id BIGINT NOT NULL,
	Vehicle_Id BIGINT NOT NULL,
	Serviced_By BIGINT DEFAULT NULL,
	Total_Cost Int(10),
	PRIMARY KEY (Identifier),
	FOREIGN KEY (Customer_Id) REFERENCES Customer(Identifier),
	FOREIGN KEY (Vehicle_Id) REFERENCES Vehicle(Identifier),
	FOREIGN KEY (Serviced_By) REFERENCES Staff(Identifier),
	INDEX IDX_SERV_VIS_CUST_ID (Customer_Id),
	INDEX IDX_SERV_VIS_VEH_ID (Vehicle_Id),
	INDEX IDX_SERV_VIS_SERV_BY (Serviced_By)
);
CREATE TABLE Procedure_Detail (
	Identifier BIGINT NOT NULL AUTO_INCREMENT,
	Name varchar(255) NOT NULL,
	Cost Int(10) NOT NULL,
	PRIMARY KEY (Identifier)
);

CREATE TABLE Procedures_Done (
	Identifier BIGINT NOT NULL AUTO_INCREMENT,
	Service_visit_Id BIGINT NOT NULL,
	Procedure_Id BIGINT NOT NULL,
	PRIMARY KEY (Identifier),
	FOREIGN KEY (Service_visit_Id) REFERENCES Servicing_Visit(Identifier),
	FOREIGN KEY (Procedure_Id) REFERENCES Procedure_Detail(Identifier)
);
