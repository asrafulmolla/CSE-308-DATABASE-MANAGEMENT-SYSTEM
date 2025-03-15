CREATE TABLE Students1 (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO Students1 (StudentID, FirstName, LastName)
VALUES (1, 'Alice', 'Smith');

INSERT INTO Students1 (StudentID, FirstName, LastName)
VALUES 
(2, 'Bob', 'Jones'),
(3, 'Cathy', 'Brown');


RENAME TABLE Students1 TO StudentsNew;

ALTER TABLE Students1
RENAME COLUMN LastName TO lastName;

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES StudentsNew(StudentID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
);

UPDATE StudentsNew
SET LastName = 'Johnson'
WHERE StudentID = 1;

DELETE FROM StudentsNew
WHERE StudentID = 2;