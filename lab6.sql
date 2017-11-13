-- first
CREATE VIEW UsersByDepartments AS
  SELECT Employee.Name AS EmployeeName, MiddleName AS MiddleName, Department.Name AS DepartmentName
  FROM Employee INNER JOIN Department ON Employee.Department = Department.Id;

SELECT * FROM UsersByDepartments
  ORDER BY DepartmentName;

DROP VIEW UsersByDepartments;

-- second

CREATE VIEW CyberSecurityUsers AS
  SELECT LastName, Employee.Name, MiddleName, Department.Name AS Department
    FROM Employee INNER JOIN Department ON Employee.Department = Department.Id
    WHERE Department.Name = 'Cyber Security';

SELECT * FROM CyberSecurityUsers;

DROP VIEW CyberSecurityUsers;

-- third

CREATE VIEW AverageAgeOfCompaniesEmployees AS
  SELECT LastName, Employee.Name AS EmployeeName, MiddleName, Department.Name AS Department
  FROM Employee INNER JOIN Department ON Employee.Department = Department.Id
  WHERE Department.Name = 'Cyber Security';

SELECT * FROM AverageAgeOfCompaniesEmployees;

DROP VIEW AverageAgeOfCompaniesEmployees;

-- fourth

CREATE VIEW EmpListByDepartmentsTypes AS
  SELECT Employee.LastName, Employee.Name, Employee.MiddleName, DepartmentType.Name AS DepartmentType
  FROM Employee INNER JOIN Department ON Employee.Department = Department.Id
                INNER JOIN DepartmentType ON Department.DepartmentType = DepartmentType.Id;

SELECT * FROM EmpListByDepartmentsTypes;

DROP VIEW EmpListByDepartmentsTypes;