INSERT INTO Corporation (Name) VALUES ('Microsoft');
INSERT INTO Corporation (Name) VALUES ('Apple');
INSERT INTO Corporation (Name) VALUES ('Google');

INSERT INTO DepartmentType (Name) VALUES ('IT');
INSERT INTO DepartmentType (Name) VALUES ('Management & Marketing');

INSERT INTO Department (Name, DepartmentType, DepartmentCorp) VALUES ('HR', 2, 1);
INSERT INTO Department (Name, DepartmentType, DepartmentCorp) VALUES ('Development', 1, 2);
INSERT INTO Department (Name, DepartmentType, DepartmentCorp) VALUES ('SEO', 2, 3);
INSERT INTO Department (Name, DepartmentType, DepartmentCorp) VALUES ('Management', 2, 1);
INSERT INTO Department (Name, DepartmentType, DepartmentCorp) VALUES ('Cyber Security', 1, 2);

INSERT INTO PostType (Name) VALUES ('Manager');
INSERT INTO PostType (Name) VALUES ('Stuff');

INSERT INTO Post (Name, PostType) VALUES ('Department Lead', 1);
INSERT INTO Post (Name, PostType) VALUES ('Team Lead', 1);
INSERT INTO Post (Name, PostType) VALUES ('Middle', 2);
INSERT INTO Post (Name, PostType) VALUES ('Junior', 2);

INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Ivan', 'Ivanov', 'Ivanovich', 'm', '01.01.1990', 'Borshahivska st. 148', 1, '01.01.2001', NULL, 1, 1
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Elena', 'Ivanova', 'Ivanovna', 'f', '01.01.1991', 'Borshahivska st. 149', 2, '01.01.2002', NULL, 2, 2
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Petr', 'Petrov', 'Petrovich', 'm', '01.01.1992', 'Borshahivska st. 150', 3, '01.01.2003', NULL, 3, 3
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Olga', 'Petrova', 'Petrovna', 'f', '01.01.1993', 'Borshahivska st. 151', 4, '01.01.2004', NULL, 4, 1
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Vasiliy', 'Kotelnikov', 'Vasilievich', 'm', '01.01.1994', 'Borshahivska st. 152', 1, '01.01.2005', NULL, 5, 2
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Katerina', 'Kotelnikova', 'Pavlovna', 'f', '01.01.1995', 'Borshahivska st. 153', 2, '01.02.2001', NULL, 1, 3
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Kliment', 'Bonchuck', 'Klimentovich', 'm', '01.02.1991', 'Borshahivska st. 154', 3, '01.02.2002', NULL, 2, 1
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Julia', 'Bonchuck', 'Vitalievna', 'f', '01.02.1992', 'Borshahivska st. 155', 4, '01.02.2003', NULL, 3, 2
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Alexander', 'Fadeev', 'Alexandrovich', 'm', '01.02.1993', 'Pushkinska st. 148', 1, '01.02.2004', NULL, 4, 3
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Alexandra', 'Fadeeva', 'Alexandrovna', 'f', '01.02.1994', 'Pushkinska st. 149', 2, '01.02.2005', NULL, 5, 1
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Bohdan', 'Panov', 'Bohdanovich', 'm', '01.02.1995', 'Pushkinska st. 150', 3, '01.03.2001', NULL, 1, 2
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Marina', 'Panova', 'Bohdanovna', 'f', '01.03.1990', 'Pushkinska st. 151', 4, '01.03.2002', NULL, 2, 3
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Vladimir', 'Prohorov', 'Vladimirovich', 'm', '01.03.1991', 'Pushkinska st. 152', 1, '01.03.2003', NULL, 3, 1
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Evheniya', 'Prohorova', 'Vladimirovna', 'f', '01.03.1992', 'Pushkinska st. 153', 2, '01.03.2004', NULL, 4, 2
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Boris', 'Seleveristov', 'Borisovich', 'm', '01.03.1993', 'Pushkinska st. 154', 3, '01.03.2005', NULL, 5, 3
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Irina', 'Seleveristova', 'Borisovna', 'f', '01.03.1994', 'Pushkinska st. 155', 4, '01.04.2001', NULL, 1, 1
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Alexey', 'Belakov', 'Alexeevich', 'm', '01.03.1995', 'Lermontova st. 148', 1, '01.04.2002', NULL, 2, 2
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Kristina', 'Belakova', 'Elexeevna', 'f', '01.04.1990', 'Lermontova st. 149', 2, '01.04.2003', NULL, 3, 3
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Ehor', 'Samoilov', 'Ehorovich', 'm', '01.04.1991', 'Lermontova st. 150', 3, '01.04.2004', NULL, 4, 1
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Oxana', 'Samoilov', 'Ehorovna', 'f', '01.04.1992', 'Lermontova st. 151', 4, '01.04.2005', NULL, 5, 2
    );
INSERT INTO Employee (Name, LastName, MiddleName, Gender, Birthday, Adress, Post, StartDate, EndDate, Department, Corp)
    VALUES (
        'Semen', 'Odintsov', 'Semenovich', 'm', '01.01.1993', 'Lermontova st. 152', 1, '01.05.2001', NULL, 1, 3
    );