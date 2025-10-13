
CREATE DATABASE GROCERY_STORE;
-- Use the database
USE GROCERY_STORE;

-- 1. Create Table
-- 1. Create Table with DATETIME
CREATE TABLE IF NOT EXISTS ITEMS (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(50),
    Quantity INT,
    Price DECIMAL(8,2),
    ManufactureDate DATETIME,
    ExpiryDate DATETIME
);

-- 2. Insert Sample Data with time
INSERT INTO ITEMS (ItemID, ItemName, Quantity, Price, ManufactureDate, ExpiryDate) VALUES
(1, 'Apple', 50, 2.50, '2025-09-01 08:30:00', '2025-11-01 18:00:00'),
(2, 'Milk', 30, 1.20, '2025-10-01 09:00:00', '2025-10-20 20:00:00'),
(3, 'Bread', 100, 0.80, '2025-10-10 07:15:00', '2025-10-15 19:45:00'),
(4, 'Eggs', 200, 0.10, '2025-10-12 06:00:00', '2025-10-25 21:30:00'),
(5, 'Cheese', 25, 3.50, '2025-09-20 10:00:00', '2025-11-20 17:00:00');


SELECT * FROM  ITEMS;
-- YEAR
-- we extect the year from a table
SELECT year(expirydate) from items;

-- month 
select month(expirydate) from items;
-- using group by
select month(expirydate),avg(price)
from items
group by month(expirydate);
-- day 
select day(expirydate) from items;
-- day(groupby )
select day(ManufactureDate),count(*) as names
from items
group by day(ManufactureDate);
-- hour
select hour(ManufactureDate) from items;
-- quters
select quarter(manufacturedate) from items;
-- weekday
select weekday(manufacturedate) from items;
-- date
select dayname(manufacturedate) from items;

-- with group by
select dayname(manufacturedate),max(manufacturedate) as maxfurtune
from items
group by dayname(manufacturedate);
-- monthname

select monthname(manufacturedate) from  items;

-- last day 
select last_day(manufacturedate) from items;

-- datefromat
select date_format(manufacturedate,'%d') as day  from items;

select date_format(manufacturedate,'%a') as day  from items;

select date_format(manufacturedate,'%W') as day  from items;

select date_format(manufacturedate,'%m') as day  from items;

select date_format(manufacturedate,'%M') as day  from items;
-- dateadd
select date_add(manufacturedate,interval(8) year) as years from items;
-- month
select date_add(manufacturedate,interval(4) month) as monrhs from items;

-- datediff
select datediff(manufacturedate,ExpiryDate) from items;

-- time stamp
select timestampdiff(month,ExpiryDate,manufacturedate) from items;

select * from items;
-- group by
select expirydate,itemName,avg(manufacturedate) as anmes
from items
group by expirydate,itemName;