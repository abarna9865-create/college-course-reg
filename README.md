# College Course Registration System - MySQL

A MySQL project to manage college students, faculty, courses and course enrollment using Primary Key, Foreign Key and JOIN.

### Features
- Student table with Student_ID (Primary Key)
- Faculty & Course tables
- Enrollment table connecting Students and Courses
- JOIN query to list students course-wise

### Tables
1. STUDENTS (Student_ID, Name, Dept, Email)
2. FACULTY (Faculty_ID, Name)
3. COURSES (Course_ID, Course_Name, Faculty_ID)
4. ENROLLMENT (Enroll_ID, Student_ID, Course_ID)

### Main Query
SELECT C.Course_Name, S.Name 
FROM ENROLLMENT E 
JOIN STUDENTS S ON E.Student_ID = S.Student_ID 
JOIN COURSES C ON E.Course_ID = C.Course_ID 
WHERE E.Course_ID = 101;

### Tech
MySQL, PK, FK, JOIN

By Abarna 
