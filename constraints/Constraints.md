###### 1. Not Null Constraint
This constraint enforces the column values to not accept the null values.
```mysql
CREATE TABLE Persons (  
    ID int NOT NULL,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255) NOT NULL,  
    Age int  
);

ALTER TABLE Persons  
MODIFY Age int NOT NULL;
```

---
###### 2. Unique constraint 
This constraint enforces the column to have only unique values.
```mysql
CREATE TABLE Persons (  
    ID int NOT NULL,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255),  
    Age int,  
    UNIQUE (ID)  
);

CREATE TABLE Persons (  
    ID int NOT NULL,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255),  
    Age int,  
    CONSTRAINT UC_Person UNIQUE (ID,LastName)  
);

ALTER TABLE Persons  
ADD UNIQUE (ID);

ALTER TABLE Persons  
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);
```

---
###### 3.Primary Key
This constraint enforces the column to have unique values
```mysql
CREATE TABLE Persons (  
    ID int PRIMARY KEY,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255),  
    Age int  
);


CREATE TABLE Persons (  
    ID int,  
    LastName varchar(255),  
    FirstName varchar(255),  
    Age int,  
    PRIMARY KEY (ID, LastName)  
);


ALTER TABLE Persons  
ADD PRIMARY KEY (ID);


ALTER TABLE Persons  
ADD CONSTRAINT PK_Person PRIMARY KEY (ID, LastName);


ALTER TABLE Persons  
DROP PRIMARY KEY;
```

---

###### 4. Check constraint
The `CHECK` constraint is used to ensure that the values in a column satisfies a specific condition.
```mysql
CREATE TABLE Persons (  
    ID int PRIMARY KEY,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255),  
    Age int CHECK (Age >= 18)  
);


CREATE TABLE Persons (  
    ID int PRIMARY KEY,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255),  
    Age int,  
    City varchar(255),  
    CONSTRAINT chk_PersonAge CHECK (Age >= 18 AND City = 'Sandnes')  
);


ALTER TABLE Persons  
ADD CONSTRAINT chk_PersonAge CHECK (Age >= 18 AND City = 'Sandnes');


ALTER TABLE Persons  
DROP CHECK chk_PersonAge;
```

---
###### 5. Default constraint
This constraint will help us to set some values to the column defaultly When values are not provided by the user 

```mysql
CREATE TABLE Persons (  
    ID int PRIMARY KEY,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255),  
    Age int,  
    City varchar(255) DEFAULT 'Sandnes'  
);


ALTER TABLE Persons  
ALTER City SET DEFAULT 'Sandnes';


ALTER TABLE Persons  
ALTER City DROP DEFAULT;
```

---
###### 6. Foreign Constraint
The `FOREIGN KEY` constraint establishes a link between two tables, and prevents action that will destroy the link between them.

```mysql
CREATE TABLE Orders (  
    OrderID int PRIMARY KEY,  
    OrderNumber int NOT NULL,  
    PersonID int,  
    CONSTRAINT fk_Person  
    FOREIGN KEY (PersonID)  
    REFERENCES Persons(PersonID)  
);


ALTER TABLE Orders  
ADD CONSTRAINT fk_Person  
FOREIGN KEY (PersonID)  
REFERENCES Persons(PersonID);


ALTER TABLE Orders  
DROP FOREIGN KEY fk_Person;
```

---

