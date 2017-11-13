SELECT * FROM Employee;

SELECT Employee.Name, MiddleName, Department.Name
  FROM Employee INNER JOIN Department ON Employee.Department = Department.Id
  ORDER BY Department.Name;

SELECT LastName, Employee.Name, MiddleName, Department.Name AS Department
  FROM Employee INNER JOIN Department ON Employee.Department = Department.Id
  WHERE Department.Name = 'Cyber Security';

SELECT Corporation.Name, AVG(YEAR(GETDATE()) - YEAR(Birthday)) AS AverageEmployeeAge
  FROM Employee INNER JOIN Corporation ON Employee.Corp = Corporation.Id
  GROUP BY Corporation.Name;

SELECT Employee.LastName, Employee.Name, Employee.MiddleName, DepartmentType.Name AS DepartmentType
  FROM Employee INNER JOIN Department ON Employee.Department = Department.Id
                INNER JOIN DepartmentType ON Department.DepartmentType = DepartmentType.Id;

SELECT Employee.LastName, Employee.Name, Employee.MiddleName, DepartmentType.Name AS DepartmentType
  FROM Employee INNER JOIN Department ON Employee.Department = Department.Id
                INNER JOIN DepartmentType ON Department.DepartmentType = DepartmentType.Id
  WHERE DepartmentType.Name = 'IT';

SELECT COUNT(DISTINCT PostType.Name) AS NumberOfPosts, Department.Name
  FROM Department INNER JOIN Employee ON Department.Id = Employee.Department
                  INNER JOIN Post ON Employee.Post = Post.Id
                  INNER JOIN PostType ON Post.PostType = PostType.Id
  WHERE Department.Name = 'HR'
  GROUP BY PostType.Name, Department.Name;