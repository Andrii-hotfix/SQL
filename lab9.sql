-- create account Bill
CREATE LOGIN Bill WITH PASSWORD = 'TryT0Gu3zzM3';
CREATE USER Bill FOR LOGIN Bill;

-- create account John
CREATE LOGIN John WITH PASSWORD = 'P455W0rD';
CREATE USER John FOR LOGIN John;

-- add role
CREATE ROLE Auditors;
EXECUTE sp_addrolemember 'Auditors', 'John';

-- grant access on procedure
GRANT EXECUTE ON OBJECT::Erase4Empl TO Bill;
GRANT ALL PRIVILEGES ON Employee TO Bill;
GRANT ALL PRIVILEGES ON Employee TO John;

REVOKE ALL PRIVILEGES ON Employee TO Bill;
REVOKE ALL PRIVILEGES ON Employee TO John;

-- deny all John's permissions
DENY ALL PRIVILEGES TO John;
DENY ALL PRIVILEGES TO Bill;

-- encrypt column
SELECT * FROM sys.symmetric_keys WHERE name = '##MS_ServiceMasterKey##'

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Password123';

CREATE CERTIFICATE Certificate1 WITH SUBJECT = 'Protect Data';

CREATE SYMMETRIC KEY SymmetricKey1
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE Certificate1;

OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;
UPDATE Employee
SET Passport = EncryptByKey
(Key_GUID('SymmetricKey1'),Passport)
FROM Employee;
CLOSE SYMMETRIC KEY SymmetricKey1;

ALTER TABLE Employee ADD NameEncrypted VARBINARY(MAX) NULL;

SELECT * FROM Employee

ALTER TABLE Employee
DROP COLUMN NameEncrypted

OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;

OPEN SYMMETRIC KEY SymmetricKey1
    DECRYPTION BY CERTIFICATE Certificate1;
UPDATE Employee
SET NameEncrypted = ENCRYPTBYKEY(KEY_GUID('SymmetricKey1'), Name)
FROM Employee
CLOSE SYMMETRIC KEY SymmetricKey1;

OPEN SYMMETRIC KEY SymmetricKey1
    DECRYPTION BY CERTIFICATE Certificate1
SELECT Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp,
    CONVERT(varchar, DecryptByKey(NameEncrypted))
AS 'Decrypted Name'
FROM Employee;

CLOSE SYMMETRIC KEY SymmetricKey1;