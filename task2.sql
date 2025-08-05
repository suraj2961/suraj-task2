USE employeedb;
CREATE TABLE EMPLOYEEE (
    Employee_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50) DEFAULT 'General',
    Salary DECIMAL(10,2),
    Joining_Date DATE
);
INSERT INTO EMPLOYEEE (First_Name, Last_Name, Email, Department, Salary, Joining_Date)
VALUES ('suraj', 'rajath', 'alice.johnson@example.com', 'HR', 55000.00, '2023-01-15');

INSERT INTO EMPLOYEEE (First_Name, Last_Name, Email, Department, Salary, Joining_Date)
VALUES ('Charlie', 'Lee', 'charlie.lee@example.com', 'IT', NULL, '2023-03-05');
INSERT INTO EMPLOYEEE (First_Name, Last_Name, Email, Salary, Joining_Date)
VALUES ('Bob', 'Smith', 'bob.smith@example.com', 60000.00, '2023-02-10');
INSERT INTO EMPLOYEEE (First_Name, Last_Name, Email, Department, Salary, Joining_Date)
VALUES ('Dana', 'White', 'dana.white@example.com', 'Finance', 62000.00, NULL);

UPDATE EMPLOYEEE
SET Salary = 58000.00
WHERE   Employee_ID = 3; 
SET SQL_SAFE_UPDATES = 0;

DELETE FROM EMPLOYEEE
WHERE Joining_Date IS NULL;
DELETE FROM EMPLOYEEE
WHERE Department = 'HR';

SELECT * FROM EMPLOYEEE;



