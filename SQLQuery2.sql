--UC1
create database Customer_Info
Use Customer_Info
--UC2
create table Customer_Table(
ID int Primary Key identity(1,1) ,
Name varchar(20),
Phone varchar(20),
Address varchar(20)
)
--UC3
Insert into Customer_Table (Name,Phone,Address) values ('A','96531365555','1461')
Insert into Customer_Table (Name,Phone,Address) values ('B','96531365568','1462')
Insert into Customer_Table (Name,Phone,Address) values ('C','96531365455','1463')
Insert into Customer_Table (Name,Phone,Address) values ('D','96531015555','1464')
Insert into Customer_Table (Name,Phone,Address) values ('A','96538965555','1465')
Insert into Customer_Table (Name,Phone,Address) values ('E','89531365555','1466')
Insert into Customer_Table (Name,Phone,Address) values ('F','96544365555','1467')
Select * from Customer_Table
--UC4
Alter table  Customer_Table add  Country varchar(20),Salary Bigint,Pincode Bigint
Update Customer_Table set  Country='India',Salary = 200000,Pincode =416012 where ID=1
Update Customer_Table set  Country='India',Salary = 250000,Pincode =416025 where ID=2
Update Customer_Table set  Country='US',Salary = 700000,Pincode =51212 where ID=3
Update Customer_Table set  Country='Canada',Salary = 900000,Pincode =85123 where ID=4
Update Customer_Table set  Country='India',Salary = 350000,Pincode =414512 where ID=5
Update Customer_Table set  Country='Japan',Salary = 500000,Pincode =98623 where ID=6
Update Customer_Table set  Country='Germany',Salary = 200000,Pincode =74562 where ID=7
--UC5
Update Customer_Table set  phone='93564218' where Name = 'A'
Update Customer_Table set  Address='5235' where Name ='B'
--UC6
SELECT COUNT(*) AS India FROM  Customer_Table where Country = 'India'
SELECT COUNT(*) AS US FROM  Customer_Table where Country = 'US'
SELECT COUNT(*) AS Japan FROM  Customer_Table where Country = 'Japan'
SELECT COUNT(*) AS Germany FROM  Customer_Table where Country = 'Germany'
--UC6
SELECT AVG(Salary) as AVG from Customer_Table
SELECT MIN(Salary) as MIN_Salary from Customer_Table
SELECT MAX(Salary) as MAX_Salary from Customer_Table
SELECT Sum(Salary) as TOTAL_Salary from Customer_Table
--UC8
create table ORDER_Table(
ID int Primary Key identity(1,1) ,
Product_Name varchar(20),
Quantity Bigint,
Rating int,
Product_ID int FOREIGN KEY REFERENCES Customer_Table(ID)
);
Insert into ORDER_Table(Product_Name,Quantity,Rating,Product_ID) values('L',5,4,'1')
Insert into ORDER_Table(Product_Name,Quantity,Rating,Product_ID) values('M',4,5,'2')
Insert into ORDER_Table(Product_Name,Quantity,Rating,Product_ID) values('N',5,5,'3')
Insert into ORDER_Table(Product_Name,Quantity,Rating,Product_ID) values('O',3,2,'4')
Insert into ORDER_Table(Product_Name,Quantity,Rating,Product_ID) values('P',4,4,'5')
Insert into ORDER_Table(Product_Name,Quantity,Rating,Product_ID) values('Q',3,1,'6')
Insert into ORDER_Table(Product_Name,Quantity,Rating,Product_ID) values('R',5,5,'7')
--UC9
select *from ORDER_Table
Drop table ORDER_Table

