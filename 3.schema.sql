-- Tabelle Employee
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Gender CHAR(1),
    BirthDate DATE,
    Street VARCHAR(100),
    PostalCode VARCHAR(20),
    City VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Tabelle Department
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(100),
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- Tabelle Location
CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Tabelle Project
CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Tabelle WorksOn (n:m zwischen Employee und Project)
CREATE TABLE WorksOn (
    EmployeeID INT,
    ProjectID INT,
    Hours DECIMAL(5,2),
    StartDate DATE,
    PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);
