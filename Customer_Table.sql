--UC1
create database Customer_Info
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