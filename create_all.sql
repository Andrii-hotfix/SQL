CREATE TABLE Corporation
(
  Id INT IDENTITY PRIMARY KEY,
  Name VARCHAR(50) UNIQUE
);

CREATE TABLE DepartmentType
(
  Id INT IDENTITY PRIMARY KEY,
  Name VARCHAR(50) UNIQUE
);

CREATE TABLE Department
(
  Id INT IDENTITY PRIMARY KEY,
  Name VARCHAR(50) UNIQUE,
  DepartmentType INT NOT NULL,
  CONSTRAINT DepartmentTypeForeign FOREIGN KEY
    (DepartmentType) REFERENCES DepartmentType
);

CREATE TABLE PostType
(
  Id INT IDENTITY PRIMARY KEY,
  Name VARCHAR(50) UNIQUE
);

CREATE TABLE Post
(
  Id INT IDENTITY PRIMARY KEY,
  Name VARCHAR(50) UNIQUE,
  PostType INT NOT NULL,
  CONSTRAINT PostTypeForeignKey FOREIGN KEY
    (PostType) REFERENCES PostType
);

CREATE TABLE Employee
(
  Id INT IDENTITY,
  Name VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  MiddleName VARCHAR(50) NOT NULL,
  Gender VARCHAR(1),
  Birthday DATE,
  Adress TEXT NOT NULL,
  Post INT NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE,
  Department INT NOT NULL,
  Corp INT NOT NULL,
  CONSTRAINT IdPrimary PRIMARY KEY (Id),
  CONSTRAINT EmployeeDepartment FOREIGN KEY (Department) REFERENCES Department,
  CONSTRAINT EmployeePost FOREIGN KEY (Post) REFERENCES Post,
  CONSTRAINT EmployeeCorporatioin FOREIGN KEY (Corp) REFERENCES Corporation,
  CONSTRAINT GenderCondition CHECK (Gender in ('f', 'm')),
  CONSTRAINT BirthdayCondition CHECK (Employee.Birthday > 'January 1, 1900' AND Birthday < GETDATE()),
  CONSTRAINT StartDateCondition CHECK (Employee.StartDate > Employee.Birthday AND Employee.StartDate < GETDATE()),
  CONSTRAINT EndDateCondition CHECK (Employee.EndDate > Employee.StartDate AND Employee.EndDate < GETDATE())
);
