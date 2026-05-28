INSERT INTO Location (LocationID, Name) VALUES (1, 'Berlin'), (2, 'München');

INSERT INTO Department (DepartmentID, Name, LocationID) VALUES 
(10, 'IT', 1),
(20, 'Sales', 2);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Gender, BirthDate, DepartmentID) VALUES
(101, 'Anna', 'Schmidt', 'F', '1990-05-12', 10),
(102, 'Ben', 'Meyer', 'M', '1985-08-23', 10),
(103, 'Clara', 'Weber', 'F', '1992-11-02', 20);

INSERT INTO Project (ProjectID, Name, DepartmentID) VALUES
(1001, 'Cloud Migration', 10),
(1002, 'Dashboard', 10),
(1003, 'CRM Implementation', 20);

INSERT INTO WorksOn (EmployeeID, ProjectID, Hours, StartDate) VALUES
(101, 1001, 20, '2025-01-10'),
(101, 1002, 15, '2025-02-01'),
(102, 1001, 25, '2025-01-15'),
(103, 1003, 30, '2025-03-01');
