create database TechKart;
use TechKart;

drop database Techkart;
-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50)
);

INSERT INTO Products VALUES
(1, 'Chair'),
(2, 'Phone'),
(3, 'Laptop'),
(4, 'Flash Drive'),
(5, 'Table');  


-- Prices Table
CREATE TABLE Prices (
    PriceID INT PRIMARY KEY,
    ProductID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Prices VALUES
(101, 1, 80.00),
(102, 2, 120.00),
(104, 4, 99.00);


-- Brands Table
CREATE TABLE Brands (
    BrandID INT PRIMARY KEY,
    ProductID INT,
    BrandName VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Brands VALUES
(201, 1, 'IKEA'),
(203, 3, 'Dell'),
(204, 4, 'Kingston');


select * from products;
select * from prices;
select * from brands;
--- inner join
select p.productID,p.ProductName,pr.Price
from products as p
join prices as pr
on p.productID = pr.productID;

select *  from products as p
inner join prices as pr
on p.productID = pr.productID;

select pr.productID,pr.price,b.BrandName
from prices as pr
join brands as b
on pr.productID = b.productID;

select * from prices as pr
join brands as b
on pr.productID = b.productID;

--- LEFT JOIN
select * from products;
select * from brands;
select * from prices;

select * from products as p
left join prices as pr
on p.productID = pr.productID; 

select p.productID,p.ProductName,pr.price
from products as p
join prices as pr
on p.productID = pr.productID;

select pr.productID,pr.price,br.BrandName
from prices as pr
join brands as br
on pr.productID = br.productID;

select br.productID,br.BrandName,pr.ProductName
from brands as br
join products as pr
on pr.productID = br.productID;

select * from brands as br
join products as p
on br.productID = p.productID;

--- right join 

select * from products;
select * from brands;
select * from prices;

select * from products as  p
right join prices as pr
on p.productID  = pr.productID;

select p.productID,p.productName,pr.price 
from products as p
right join prices as pr
on p.productID = pr.productID;
--- multiple inner join
select * from products as p
join prices as pr
on p.productID = pr.productID
join brands as br
on p.productID = br.productID;

select p.productID,p.productName,pr.price,br.BrandName 
from products as p
join prices as pr
on p.productID = pr.productID
join brands as br
on p.productID = br.productID;
--- multiple left join

select * from products as p
left join prices as pr
on p.productID = pr.productID
left join brands as br
on p.productID = br.productID;

select p.productID,p.productName,pr.price,br.BrandName
from products as p
left join prices as pr
on p.productID  = pr.productID
left join brands as br
on p.productID = br.productID;

--- multiple right 
select * from products as p
right join prices as pr
on p.productID = pr.productID
right join brands as br
on p.productID = br.productID;

select p.productID,p.productName,pr.price,br.BrandName
from products as p
right join prices as pr
on p.productID  = pr.productID
right join brands as br
on p.productID = br.productID;