CREATE TABLE Customer
(
Customer_ID VARCHAR (10) PRIMARY KEY,
Name VARCHAR (50) NOT NULL, 
Mail VARCHAR (30) NOT NULL,
Phone_No VARCHAR (10) UNIQUE NOT NULL,
DOB DATE,  --yyyy--mm--dd
Gender VARCHAR(11),
Isactive VARCHAR(10) DEFAULT 'ACTIVE'
);


SELECT * FROM Customer;
SELECT Name FROM Customer;
DROP TABLE Customer;


INSERT INTO Customer(Customer_ID,Name,Mail,Phone_No,DOB,Gender,Isactive)
VALUES
('1','Biman Kundu','kundubiman@gmail.com','9223344556','2004-08-07','Male',Default),
('2','Soumik Das','Sd1234@gmail.com','9223344565','2000-01-07','Male',Default),
('3','Jyotishka Mondal','Jmondal189@gmail.com','9223585405','1995-05-07','Male',Default),
('4','Md. Shamim Mallick','mdsm9876@gmail.com','9223378452','1996-01-07','Male',Default),
('5','Arya Chatterjee','chatujjebabu@gmail.com','9223314565','2001-08-27','Male',Default),
('6','Soumen Manna','Thala07@gmail.com','9223374859','2001-10-07','Male',Default),
('7','Rupayan Nandi','Devnandi345@gmail.com','9223301210','2002-08-07','Male',Default),
('8','Subhroneel Bera','Berasubho@gmail.com','9223345654','1999-08-07','Male',Default),
('9','Debdulal Ghosh','Debugh087@gmail.com','9223312365','1989-09-07','Male',Default),
('10','Itisha Roy','Itiroy4356@gmail.com','9223374123','2000-08-17','Female',Default),
('11','Preksha Ganguly','preksha2003@gmail.com','9223312569','2003-09-23','Female',Default),
('12','Presha Ganguly','PGanguly543@gmail.com','9223314723','2003-09-23','Female',Default);






CREATE TABLE Employee 
(
    Employee_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Phone_No VARCHAR(10) UNIQUE NOT NULL,
    DOB DATE,
    Gender VARCHAR(11),
    Branch VARCHAR(30)
);

SELECT * FROM Employee;
DROP TABLE Employee;
SELECT Name FROM Employee;

ALTER TABLE Employee ADD Salary DECIMAL(10,2) DEFAULT NULL;


INSERT INTO Employee(Employee_ID, Name, Email, Phone_No, DOB, Gender, Branch, Salary)
VALUES
('E1','Soumik Das','Das2412@gmail.com','9223344559','1999-08-07','Male','Panagarh',60000),
('E2','Lakshman Kundra','Lkundra23@gmail.com','9223345878','2004-09-06','Male','Howrah', NULL),
('E3','Sirish Chowdhury','Chow0807@gmail.com','9223344557','2003-08-04','Male','Kolkata', NULL),
('E4','Rampal Mehra','Rammehra2@gmail.com','9223344556','2000-08-14','Male','Budbud', NULL),
('E5','Aditya Pathak','Pathakadi@gmail.com','9223344554','2000-01-27','Male','Pune', NULL),
('E6','Hrithik Sharma','Sharmaji@gmail.com','9223344553','2014-10-17','Male','Punjab', NULL),
('E7','Rohit Sharma','RoHitman264@gmail.com','9223344552','2001-07-07','Male','Mankar', NULL),
('E8','Shubham Kumar','Kumarshubham00@gmail.com','9223344551','2000-01-11','Male','Rajbandh', NULL),
('E9','Arup Das','Aruppp787@gmail.com','9223344589','1984-05-30','Male','Bolpur', NULL),
('E10','Ankan Saha','Sahaankan87@gmail.com','9223344759','1999-11-11','Male','Anuragpur', NULL);





CREATE TABLE Branch (
    Branch_Code VARCHAR(10) PRIMARY KEY,
    Branch_Name VARCHAR(50) NOT NULL,
    Branch_Address VARCHAR(100) NOT NULL
);
SELECT * FROM Branch;
DROP TABLE Branch;

INSERT INTO Branch(Branch_Code,Branch_Name,Branch_Address)
VALUES
('PN001','PANAGARH','PANAGARH BAZAR'),
('SM002','SHILAMPUR','SHILAMPUR GRAM'),
('MN003','MANAKR','MANKAR BUS STAND'),
('AGP004','ANURAGPUR','ANURAGPUR PRIMARY SCHOOL'),
('BD005','BUDBUD','BUDBUD STATION'),
('RJ006','RAJBANDH','RAJBANDH BAZAR'),
('DGP007','DURGAPUR','CITY CENTRE'),
('KL008','KOLKATA','KOLKATA GT ROAD'),
('HR009','HOWRAH','HOWRAH BUS STAND'),
('GP010','GOPALPUR','GOPALPUR MAIN ROAD');




CREATE TABLE Product (
    Product_ID VARCHAR(10) PRIMARY KEY,
    Product_Name VARCHAR(50) NOT NULL,
    Description VARCHAR(200) NOT NULL
);
SELECT * FROM Product ;
DROP TABLE Product;

INSERT INTO Product(Product_ID,Product_Name,Description)
VALUES
('P001','LED MONITOR','16-INCH LED MONITOR'),
('P002', 'WIRELESS MOUSE', '2.4GHz WIRELESS OPTICAL MOUSE'),
('P003', 'KEYBOARD', 'USB MULTIMEDIA KEYBOARD'),
('P004', 'EXTERNAL HARD DRIVE', '1TB USB 3.0 EXTERNAL HDD'),
('P005', 'WEBCAM', '1080P HD USB WEBCAM WITH MIC'),
('P006', 'PRINTER', 'LASER PRINTER WITH WIFI SUPPORT'),
('P007', 'SPEAKERS', '2.1 CHANNEL MULTIMEDIA SPEAKER SYSTEM'),
('P008', 'ROUTER', 'DUAL BAND WIFI ROUTER - 1200Mbps'),
('P009', 'GRAPHICS CARD', 'NVIDIA GTX 1650 4GB GDDR6'),
('P010', 'LAPTOP STAND', 'ADJUSTABLE ALUMINIUM LAPTOP STAND');





CREATE TABLE Account (
    Account_No VARCHAR(15) PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Account_Type VARCHAR(20) NOT NULL,
    Balance DECIMAL(12, 2) DEFAULT 0.00
	
);
SELECT * FROM Account;
DROP TABLE Account;

INSERT INTO Account (Account_No,Customer_ID,Account_Type,Balance)
VALUES
('AC001','1','SAVINGS','20000'),
('AC002', '2', 'CURRENT', 15000.50),
('AC003', '3', 'SAVINGS', 5000.00),
('AC004', '4', 'CURRENT', 32000.75),
('AC005', '5', 'SAVINGS', 10000.00),
('AC006', '6', 'CURRENT', 2500.00),
('AC007', '7', 'SAVINGS', 18000.00),
('AC008', '8', 'CURRENT', 42000.00),
('AC009', '9', 'SAVINGS', 8000.25),
('AC010', '10', 'SAVINGS', 12000.00);


CREATE TABLE Transaction (
	Account_No VARCHAR(12) UNIQUE ,
	Amount INT ,
	Transaction_ID VARCHAR(10) ,
	Time TIMESTAMP ,
	Transaction_Method VARCHAR(10) ,
	Date DATE ,
	Status VARCHAR(15) 
);

INSERT INTO Transaction(Account_No ,Amount ,Transaction_ID  ,Time  ,Transaction_Method  ,Date  ,Status)
VALUES 
()

SELECT * FROM Transaction ;
