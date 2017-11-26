CREATE PROCEDURE GetEMployeesByDepartment
  @DepartmentID INT=1
  AS
    SELECT COUNT(Employee.Id)
    FROM Employee WHERE Employee.Department = @DepartmentID;

  EXEC GetEMployeesByDepartment 2;

  DROP PROCEDURE GetEMployeesByDepartment;

--   // удалить 4 сотрудников

  CREATE PROCEDURE Erase4Empl
    @DepartmentID INT = 1
    AS
    DECLARE @i_count INT = 0
    IF EXISTS(SELECT Department.Id FROM Department WHERE Department.Id = @DepartmentID)
      WHILE @i_count < 4
        BEGIN
          DELETE TOP(1) FROM Employee WHERE Employee.Department = @DepartmentID;
          SET @i_count = @i_count + 1;
        END

GO

  SELECT * FROM Employee WHERE Employee.Department = 1;
--
  EXEC Erase4Empl 1;
--
  SELECT * FROM Employee WHERE Employee.Department = 1;

  DROP PROCEDURE Erase4Empl;

