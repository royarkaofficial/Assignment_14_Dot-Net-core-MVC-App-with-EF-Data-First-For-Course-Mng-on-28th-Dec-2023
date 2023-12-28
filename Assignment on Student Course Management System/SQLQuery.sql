create database CMSdb
use CMSdb

create table Category(
Id int primary key,
CourseCategory nvarchar(50) not null unique)
create table Course(
Id int primary key,
Name nvarchar(50),
Fee float,
StartDate datetime,
Category int foreign key references Category(Id)
)