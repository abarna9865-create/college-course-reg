CREATE TABLE FACULTY (
 Faculty_ID int PRIMARY KEY,
 Faculty_Name VARCHAR(100),
 Department VARCHAR(50)
);

CREATE TABLE COURSES (
 Course_ID int PRIMARY KEY,
 Course_Name VARCHAR(100),
 Credits int,
 Faculty_ID int,
 FOREIGN KEY (Faculty_ID) REFERENCES FACULTY(Faculty_ID)
);
INSERT INTO FACULTY VALUES (1, 'Dr.Lakshmi', 'CS');
INSERT INTO COURSES VALUES (501, 'Oracle DBA', 4, 1);
SELECT*FROM COURSES;

Faculty records:
CREATE TABLE FACULTY (
 Faculty_ID int PRIMARY KEY,
 Faculty_Name VARCHAR(100),
 Department VARCHAR(50)
);

CREATE TABLE ENROLLMENT (
 Enrollment_ID int PRIMARY KEY,
 Student_ID int,
 Course_ID int,
 Enroll_Date DATE default (now()),
 FOREIGN KEY (Student_ID) REFERENCES STUDENTS(Student_ID),
 FOREIGN KEY (Course_ID) REFERENCES COURSES(Course_ID)
);

INSERT INTO ENROLLMENT VALUES (1, 101, 501, curdate());
INSERT INTO ENROLLMENT VALUES (2, 102, 501, curdate());

SELECT*FROM ENROLLMENT;

SELECT S.Student_Name, C.Course_Name,curdate()
FROM STUDENTS S
JOIN ENROLLMENT E ON S.Student_ID = E.Student_ID
JOIN COURSES C ON E.Course_ID = C.Course_ID;


