CREATE TRIGGER EmployeeTrigger
  ON Employee INSTEAD OF INSERT AS
  BEGIN
    IF EXISTS(
        SELECT Employee.Name FROM Employee
        WHERE Employee.Name = (SELECT inserted.Name FROM inserted)
        AND Employee.MiddleName = (SELECT inserted.MiddleName FROM inserted)
        AND Employee.LastName = (SELECT  inserted.LastName FROM inserted)
    )
      BEGIN
        RAISERROR ('Error: This employee allready exists!', 1, 1)
        ROLLBACK
      END
    ELSE
      BEGIN
        INSERT INTO Employee
          SELECT Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp
          FROM inserted
      END
  END

SELECT * FROM Employee

DROP TRIGGER EmployeeTrigger

INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Elena', 'Ivana', 'Ivanovna', 'f', '01.01.1991', 'Borshahivska st. 129', 2, '01.01.2003', NULL, 2, 2
    );

INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Elena', 'Ivanova', 'Ivanovna', 'f', '01.01.1991', 'Borshahivska st. 129', 2, '01.01.2003', NULL, 2, 2
    );