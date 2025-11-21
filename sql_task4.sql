insert into Customer(CustomerID,CustomerName,Email,Phone,Address)Values 
(1,'Rahul','rahul12@gmail.com',0909099098,'coimbatore'),
(3,'Priya','priya82@gmail.com',0808088089,'trichy'),
(4,'karan','karan99@gmail.com',0707070770,'salem'),
(5,'Meena','meena90@gmail.com',0606066606,'thoothkudi'),
(6,'Riya','riya82@gmail.com',0405044045,'Chennai');
select * from customer;
SELECT COUNT(*) AS Total_Employees FROM Customer;
update customer set Address='Chennai' where CustomerID=5;
SELECT Address, COUNT(*) AS Employee_Count FROM Customer GROUP BY Address;
ALTER TABLE Customer ADD COLUMN Salary int;
UPDATE Customer SET Salary = 40000 WHERE CustomerID=1;
UPDATE Customer SET Salary = 45000 WHERE CustomerID=2;
UPDATE Customer SET Salary = 50000 WHERE CustomerID=3;
UPDATE Customer SET Salary = 600000 WHERE CustomerID=4;
UPDATE Customer SET Salary = 25000 WHERE CustomerID=5;
UPDATE Customer SET Salary = 10000 WHERE CustomerID=6;
ALTER TABLE Customer ADD COLUMN department varchar(100);
UPDATE Customer SET department = 'packing' WHERE CustomerID=1;
UPDATE Customer SET department = 'checking' WHERE CustomerID=2;
UPDATE Customer SET department = 'manager'WHERE CustomerID=3;
UPDATE Customer SET department = 'supervisor' WHERE CustomerID=4;
UPDATE Customer SET department = 'security' WHERE CustomerID=5;
UPDATE Customer SET department = 'cleaner' WHERE CustomerID=6;
SELECT department,AVG(Salary) AS Avg_Salary FROM Customer GROUP BY department ;
SELECT department, SUM(Salary) AS Total_Salary FROM Customer GROUP BY department;
SELECT department, MAX(Salary) AS Highest_Salary FROM Customer GROUP BY department;
SELECT  MAX(Salary) AS Highest_Salary, MIN(Salary) AS Lowest_Salary
FROM Customer;
SELECT department, AVG(Salary) AS Average_Salary
FROM Customer
GROUP BY department;
SELECT Address, SUM(Salary) AS Total_Salary_By_City
FROM Customer
GROUP BY Address;
SELECT Address, AVG(Salary) AS Total_Salary_By_City
FROM Customer
GROUP BY Address;
SELECT department, SUM(Salary) AS Total_Salary
FROM Customer
GROUP BY department
HAVING SUM(Salary) > 50000;
SELECT department, AVG(Salary) AS Avg_Salary
FROM Customer
GROUP BY department
HAVING AVG(Salary) > 30000;
SELECT Address, COUNT(*) AS Number_of_People
FROM Customer
GROUP BY Address;















