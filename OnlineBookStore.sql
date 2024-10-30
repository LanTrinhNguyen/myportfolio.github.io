--create tables
create table Customers( ---create Customers table
CustomerID int primary key,
FirstName varchar(100),
LastNames varchar(100),
PostalCode int,
Province text,
Country text,
PhoneNumber varchar(100));
create table Books(---create Books table
BookID int primary key,
Title varchar(100),
ISBN varchar(100),
Genre varchar(100),
PublicationYear int,
Price int,
Condition text);
create table Orders(---create Orders table
OrderID int primary key,
CustomerID int foreign key references Customers,
OrderDate date,
DeliveryCost int);
create table OrderItem(---create OrderItem table
OrderID int foreign key references Orders,
BookID int foreign key references Books,
Quantity int,
Price int);
create table Publishers( -- ---create Publishers table
PublisherID int Primary key,
BookID int foreign key references Books,
PublisherName varchar(100),
Country text);
create table Authors (---create Authors table
AuthorID int primary key,
BookID int foreign key references Books,
FirstName varchar(100),
LastName varchar(100));
create table Inventory(---create Inventory table
InventoryID int primary key,
BookID int foreign key references Books,
StockLevelUsed int,
StockLevelNew int);

-- insert data into tables
insert into Customers(CustomerID, FirstName, LastNames, PostalCode, Province, Country, PhoneNumber)
values
(50001, 'Chloe', 'Rief',74832, 'New York','USA', '289-759-6562'),
(50002, 'Fellenor', 'Gale',34712, 'Los Angeles ','USA', '372-767-2633'),
(50003, 'Peracco', 'Colombus',47182, 'Charlotte','USA', '361-738-2723'),
(50004, 'Bainton', 'Londonderry',39892, 'Phoenix','USA', '736-236-2613'),
(50005, 'Lamdin', 'Larry',24722, 'Portland','USA', '261-412-2422'),
(50006, 'Alllibone', 'Carpenter',24812, 'Norfolk','USA', '244-435-8743'),
(50007, 'Stain', 'Macpherson',81283, 'Boston','USA', '342-342-6333'),
(50008, 'Sabine', 'Rockefeller',24817, 'Nashville','USA', '235-325-1267'),
(50009, 'Dobbinson', 'Raven',98218, 'New York','USA', '357-387-7362'),
(50010, 'Softley', 'Kings', 27124, 'Wichita', 'USA', '342-358-9284'),
(50011, 'Tindley', 'Loftsgordon',21891, 'New York','USA', '612-347-2981');
insert into Books (BookID, Title, ISBN, Genre, PublicationYear, Price, Condition)
values
(20011, 'My Brilliant Friend', '978-1-60945-078-6', 'Novel', 2011, 120000, NULL),
(20010, 'Half of a Yellow Sun', '978-0-00-720028-3', 'Fiction', 2006, 120000, 'Win Orange prize'),
(20009, 'Cloud Atlas', '0-340-82277-5', 'Novel', 2004, 150000, 'Russian doll of a book'),
(20008, 'Autumn', '978-0-241-20700-0', 'Novel', 2016, 125000, NULL),
(20007, 'Between the World and Me', '978-0-8129-9354-7', 'Biography', 2015, 135000, NULL),
(20006, 'The Amber Spyglass', '0-590-54244-3', 'Novel', 2000, 150000, NULL),
(20005, 'Austerlitz', '3-446-19986-1', 'Novel', 2001, 100000, NULL),
(20004, 'Never Let Me Go', '1-4000-4339-5', 'Fiction', 2005, 120000, NULL),
(20003, 'Secondhand Time', '978-0-399-58882-2', 'Novel', 2013, 115000, NULL),
(20002, 'Gilead', '978-0-374-15389-2', 'Novel', 2004, 130000, NULL),
(20001, 'Wolf Hall', '978-1554687787', 'Novel', 2009, 105000, NULL);
insert into Orders( OrderID, CustomerID, OrderDate, DeliveryCost)
values
( 41001, 50003, '2022-12-15', 50000),
( 41002, 50010, '2021-10-24', 40000),
( 41003, 50004, '2023-09-14', 45000),
( 41004, 50009, '2021-06-16', 35000),
( 41005, 50007, '2023-02-26', 25000),
( 41006, 50008, '2022-03-18', 70000),
( 41007, 50006, '2020-04-10', 55000),
( 41008, 50001, '2020-05-30', 45000),
( 41009, 50004, '2021-07-31', 55000),
( 41010, 50004, '2021-10-30', 30000),
( 41011, 50002, '2020-11-15', 50000);
insert into OrderItem(OrderID, BookID, Quantity, Price)
values
(41001, 20004, 23, 70000),
(41002, 20002, 16, 60000),
(41003, 20003, 15, 75000),
(41004, 20006, 28, 65000),
(41005, 20008, 39, 85000),
(41006, 20001, 11, 55000),
(41007, 20007, 24, 45000),
(41008, 20004, 11, 65000),
(41009, 20005, 34, 60000),
(41010, 20008, 11, 40000),
(41011, 20001, 27, 65000);
insert into Publishers(PublisherID, BookID, PublisherName, Country)
values
(30001, 20001, 'Fourth Estate', 'USA'),
(30003, 20003, 'Random House', 'EU'),
(30005, 20005, 'C.Hanser', 'Russia'),
(30007, 20007, 'Spiegel& Grau', 'USA'),
(30009, 20009, 'Sceptre','USA'),
(300011, 20011, 'Edizioni e/o', 'America'),
(30002, 20002, 'Farrar, Straus and Giroux', 'England'),
(30004, 20004, 'Faber and Faber', 'England'),
(30006, 20006, 'Scholastic, David Fickling Books', 'United Kingdom'),
(30008, 20008, 'Hamish Hamilton', 'Russia'),
(30010, 20010, '4th Estate', 'France');
Insert into Authors (AuthorID, BookID, FirstName, LastName)
values
(10001, 20001, 'Hilary', 'Mantel'),
(10002, 20002, 'Marilynne', 'Robinson'), 
(10003, 20003, 'Svetlana', 'Alexievich'), 
(10004, 20004, 'Kazuo', 'Ishiguro'),
(10005, 20005, 'WG', 'Sebald'), 
(10006, 20006, 'Philip', 'Pullman'), 
(10007, 20007, 'Ta-Nehisi', 'Coates'), 
(10008, 20008, 'Ali', 'Smith'), 
(10009, 20009, 'David', 'Mitchell'), 
(10010, 20010, 'Chimamanda Ngozi', 'Adichie'), 
(10011, 20011, 'Elena', 'Ferrante');
insert into Inventory(InventoryID, BookID, StockLevelUsed, StockLevelNew)
values
(61001, 20001, 23, 18),
(61002, 20002, 21, 4),
(61003, 20003, 14, 9),
(61004, 20004, 33, 20),
(61005, 20005, 17, 30),
(61006, 20006, 26, 12),
(61007, 20007, 22, 13),
(61008, 20008, 43, 32),
(61009, 20009, 12, 7),
(61010, 20010, 23, 14),
(61011, 20011, 13, 22);

--express all data in database
select * from Customers
select * from Books
select * from Orders
select * from OrderItem
select * from Publishers
select * from Authors
select * from Inventory

-- SQL task---

--Retrieve a list of all book along with their authors
select concat(FirstName,' ', LastName) as Full_name_author,
books. Title,
books.PublicationYear
from Authors
join Books
on Authors.BookID = Books.BookID
order by Full_name_author

--Find the 5 top-selling books(base on number of copies books)
Select Top 5 Title, OrderItem.Quantity as Number_of_copies_books
from Books
join OrderItem
on Books.BookID=OrderItem.BookID
order by Number_of_copies_books desc

--Retrieve a list of all publishers with along their books
select PublisherName, Publishers.Country, Title, ISBN
from Books
join Publishers
on Books.BookID=Publishers.BookID
order by PublisherName

--Total revenue generated from order
select Title, sum(Quantity) as Sold_Quantity, Books.Price, sum(OrderItem.Quantity*Books.Price) as Revenue
from Books
join OrderItem 
on Books.BookID=OrderItem.BookID
group by Title, Books.Price

-- List customer who placed the most order 
select top 5 concat(FirstName,' ', LastNames) as Customer_Full_Name,
sum(OrderItem.Quantity) as Quantity_Order 
from Customers
join Orders
on Customers.CustomerID = Orders. CustomerID
join OrderItem
on Orders.OrderID = OrderItem.OrderID
join Books
on OrderItem. BookID = Books.BookID
group by concat(FirstName,' ', LastNames)
order by Quantity_Order desc


--Find the most popular category base on sold quantity
select Books.BookID, 
Title,
concat(FirstName,' ', LastName) as Full_Name_Author,
sum(Quantity) as Sold_Quantity
from Books
join Authors
on Books.BookID = Authors.BookID
join OrderItem
on Books.BookID = OrderItem.BookID
group by Title, Books.BookID, concat(FirstName,' ', LastName)
order by Sold_Quantity

--Count of number of stored book 
select Books.BookID, Title,
StockLevelUsed + StockLevelNew as Total_Books,
Quantity,
(StockLevelNew + StockLevelUsed) - Quantity as In_Store
from Books
join OrderItem
on Books.BookID = OrderItem.BookID
join Inventory
on OrderItem. BookID = Inventory.BookID


---Calculate the monthly sales
select month(OrderDate) as Monthly_Sales,
sum(Quantity * Price) as Total_Revenue
from Orders
join OrderItem 
on Orders.OrderID = OrderItem.OrderID
where year(OrderDate) = 2023
group by month(OrderDate)
order by Monthly_Sales

-- Total Oders Value
select sum(Quantity) as Total_Sold_Quatity,
sum((Quantity*Price)+ DeliveryCost) as Total_Orders_Value
from OrderItem 
join Orders
on OrderItem.OrderID = Orders.OrderID
where Quantity > 0

--Total Sales by Genre
select Genre, Sum(OrderItem.Quantity) as Total_Sold
from Books
join OrderItem
on Books.BookID=OrderItem.BookID
group by Genre 
order by Total_Sold

--create report the monthly sales
select year(OrderDate) as Year, month(OrderDate) as Month,
count(Orders.OrderID) as Total_Order,
sum(OrderItem.Quantity) as Total_Quantity,
sum(OrderItem.Quantity * Price) as Total_Revenue
from Orders
join OrderItem
on Orders.OrderID = OrderItem.OrderID 
group by Year, Month
order by Month, Year
