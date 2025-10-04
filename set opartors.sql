
CREATE DATABASE DemoDB;
USE DemoDB;
drop  DATABASE DemoDB;

CREATE TABLE Employees_USA (
    EmpID INT,
    Name VARCHAR(50)
);

CREATE TABLE Employees_UK (
    EmpID INT,
    Name VARCHAR(50)
);

-- 3️⃣ Insert Sample Data
INSERT INTO Employees_USA (EmpID, Name) VALUES
(1, 'John'),
(2, 'Alice'),
(4, 'Bob');

INSERT INTO Employees_UK (EmpID, Name) VALUES
(2, 'Alice'),
(3, 'David'),
(4, 'Bob');

--  UNION (Unique Rows Only)
SELECT EmpID, Name FROM Employees_USA
UNION
SELECT EmpID, Name FROM Employees_UK;

-- UNION ALL (All Rows Including Duplicates)
SELECT EmpID, Name FROM Employees_USA
UNION ALL
SELECT EmpID, Name FROM Employees_UK;
-- except 
-- MySQL doesn’t support EXCEPT directly. You can use a LEFT JOIN with IS NULL instead
SELECT u.EmpID, u.Name
FROM Employees_USA u
LEFT JOIN Employees_UK k
ON u.EmpID = k.EmpID AND u.Name = k.Name
WHERE k.EmpID IS NULL;
-- intersection
-- MySQL doesn’t support INTERSECT directly. You can use INNER JOIN instead:
SELECT u.EmpID, u.Name
FROM Employees_USA u
INNER JOIN Employees_UK k
ON u.EmpID = k.EmpID AND u.Name = k.Name;


