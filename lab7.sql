CREATE PROCEDURE GetEMployeesByDepartment
  @DepartmentID INT=1
  AS
    SELECT COUNT(Employee.Id)
    FROM Employee WHERE Employee.Department = @DepartmentID;

  EXEC GetEMployeesByDepartment 2;

  DROP PROCEDURE GetEMployeesByDepartment;