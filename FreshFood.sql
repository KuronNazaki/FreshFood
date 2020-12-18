drop database DB_FreshFood;

create database DB_FreshFood;

CREATE TABLE DB_FreshFood.Categories (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL
);

create table DB_FreshFood.Products (
	ID int primary key auto_increment,
    CategoryID int,
    Name varchar(100) not null, 
    HistoricalCost float,
    Promotion float,
    ShortDescription varchar(200),
    DetailedDescription text,
    foreign key (CategoryID) references Categories (ID)
);

create table DB_FreshFood.News (
	ID int primary key auto_increment,
    Title varchar(100),
    Content text
);

create table DB_FreshFood.Contact (
	ID int primary key auto_increment,
    FullName varchar(100),
    Email varchar(50),
    Topic varchar(50),
    Content text
);

create table DB_FreshFood.Users (
	Account varchar(100) not null primary key,
    Password varchar(100) not null,
    Gender bit,
    DateOfBirth dateTime,
    Address varchar(200),
    Email varchar(50),
    PhoneNumber varchar(50),
    Authority int not null -- 0 : Admin, 1 : Employee, 2 : Customer
);

create table DB_FreshFood.Orders (
	ID int primary key auto_increment,
    FullName varchar(50),
    Address varchar(200),
    Email varchar(100),
    PhoneNumber varchar(50),
    DateOfOrder dateTime,
    NumberOfCategories int,
    Total float
);

create table DB_FreshFood.DetailedOrders (
	ID int primary key auto_increment,
    ProductID int, 
    foreign key (ProductID) references Products(ID),
    OrderID int,
    foreign key (OrderID) references Orders(ID),
	ItemsNumber int,
    Total float,
    ItemsCost float
);



