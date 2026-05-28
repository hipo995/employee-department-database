-- Alle Mitarbeiter mit Abteilungsname und Standort
SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.Name AS DepartmentName,
    l.Name AS LocationName
FROM Employee e
JOIN Department d ON e.DepartmentID = d.DepartmentID
JOIN Location l ON d.LocationID = l.LocationID;

-- Gesamtstunden pro Mitarbeiter für alle Projekte
SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    SUM(w.Hours) AS TotalHours
FROM Employee e
JOIN WorksOn w ON e.EmployeeID = w.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY TotalHours DESC;

-- Projektname, zugehörige Abteilung und Anzahl der Mitarbeiter
SELECT 
    p.ProjectID,
    p.Name AS ProjectName,
    d.Name AS DepartmentName,
    COUNT(w.EmployeeID) AS EmployeeCount
FROM Project p
JOIN Department d ON p.DepartmentID = d.DepartmentID
LEFT JOIN WorksOn w ON p.ProjectID = w.ProjectID
GROUP BY p.ProjectID, p.Name, d.Name;

-- Mitarbeiter, die an mehr als 2 Projekten arbeiten
SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    COUNT(w.ProjectID) AS ProjectCount
FROM Employee e
JOIN WorksOn w ON e.EmployeeID = w.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
HAVING COUNT(w.ProjectID) > 2;

-- Alle Projekte ohne zugewiesene Mitarbeiter
SELECT 
    p.ProjectID,
    p.Name
FROM Project p
LEFT JOIN WorksOn w ON p.ProjectID = w.ProjectID
WHERE w.EmployeeID IS NULL;



