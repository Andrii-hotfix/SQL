SELECT Employee.LastName, Employee.Name, Employee.MiddleName, YEAR(GETDATE()) - YEAR(Employee.Birthday) AS Age
  FROM Employee, Corporation WHERE Employee.Corp = Corporation.Id
  AND YEAR(GETDATE()) - YEAR(Employee.Birthday) < (SELECT AVG(YEAR(GETDATE()) - YEAR(Employee.Birthday)) FROM Employee);

SELECT AVG(YEAR(GETDATE()) - YEAR(Employee.Birthday))
  FROM Employee;

SELECT Employee.LastName, Employee.Name, Employee.MiddleName, YEAR(GETDATE()) - YEAR(Employee.Birthday) AS Age
  FROM Employee;

SELECT MIN(YEAR(GETDATE()) - YEAR(Employee.Birthday)) AS minimum_age, Corporation.Name
FROM Employee
  INNER JOIN Corporation ON Employee.Corp = Corporation.Id
GROUP BY Corporation.Name

SELECT Employee.Name, Employee.LastName, YEAR(GETDATE()) - YEAR(Employee.Birthday) AS Age, Corporation.Name
  FROM Employee INNER JOIN Corporation ON Employee.Corp = Corporation.Id;

SELECT Corporation.Name, Employee.LastName, Employee.Name,Employee.MiddleName, YEAR(GETDATE()) - YEAR(Employee.Birthday) AS Age
  FROM Employee INNER JOIN Corporation ON Employee.Corp = Corporation.Id
  WHERE YEAR(GETDATE()) - YEAR(Employee.Birthday) = (
    SELECT MIN(YEAR(GETDATE()) - YEAR(Employee.Birthday)) AS minimum_age
    FROM Employee
      INNER JOIN Corporation ON Employee.Corp = Corporation.Id
    WHERE Corporation.Name = 'Apple'
    GROUP BY Corporation.Name
  )
  AND Corporation.Name = 'Apple';
