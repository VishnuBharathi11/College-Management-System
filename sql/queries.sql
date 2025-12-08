------------------------------------------------------------
-- 1. List students enrolled in the "Computer Science" department.
------------------------------------------------------------
SELECT Std_name
FROM Student
WHERE Dept_id = (
    SELECT Dept_id FROM Department WHERE Dept_name = 'Computer Science'
);

------------------------------------------------------------
-- 2. Find professors who joined after 2020.
------------------------------------------------------------
SELECT Prof_name, Join_date
FROM Professor
WHERE Join_date > DATE '2020-01-01';

------------------------------------------------------------
-- 3. Retrieve courses that are worth 4 credits.
------------------------------------------------------------
SELECT Course_name
FROM Courses
WHERE Credits = 4;

------------------------------------------------------------
-- 4. List students who live in "Chennai" (based on address).
------------------------------------------------------------
SELECT Std_name
FROM Student
WHERE Address = 'Chennai';

------------------------------------------------------------
-- 5. Find courses that have no prerequisites.
------------------------------------------------------------
SELECT Course_id, Course_name
FROM Courses
WHERE Course_id NOT IN (
    SELECT Course_id FROM Prerequisites
);

------------------------------------------------------------
-- 6. Display student names along with the courses they are enrolled in.
------------------------------------------------------------
SELECT S.Std_name, C.Course_name
FROM Enrollment E
JOIN Student S ON E.Std_id = S.Std_id
JOIN Courses C ON E.Course_id = C.Course_id;

------------------------------------------------------------
-- 7. Find students who received an 'A' grade in 'DBMS'.
------------------------------------------------------------
SELECT S.Std_name
FROM Grade G
JOIN Enrollment E ON G.Enroll_id = E.Enroll_id
JOIN Student S ON E.Std_id = S.Std_id
JOIN Courses C ON E.Course_id = C.Course_id
WHERE G.Grade_val = 'A'
  AND C.Course_name = 'DBMS';

------------------------------------------------------------
-- 8. List professors who teach students from other departments.
------------------------------------------------------------
SELECT DISTINCT P.Prof_name
FROM Teaches T
JOIN Professor P ON T.Prof_id = P.Prof_id
JOIN Courses C ON T.Course_id = C.Course_id
JOIN Enrollment E ON C.Course_id = E.Course_id
JOIN Student S ON E.Std_id = S.Std_id
WHERE P.Dept_id <> S.Dept_id;

------------------------------------------------------------
-- 9. Identify courses that have reached their full capacity.
------------------------------------------------------------
SELECT C.Course_name
FROM Courses C
WHERE C.Std_capacity = (
    SELECT COUNT(*)
    FROM Enrollment E
    WHERE E.Course_id = C.Course_id
);

------------------------------------------------------------
-- 10. List students who have failed (Grade 'F') in more than 2 subjects.
------------------------------------------------------------
SELECT S.Std_name
FROM Student S
JOIN Enrollment E ON S.Std_id = E.Std_id
JOIN Grade G ON E.Enroll_id = G.Enroll_id
WHERE G.Grade_val = 'F'
GROUP BY S.Std_name
HAVING COUNT(*) > 2;

------------------------------------------------------------
-- 11. Calculate the average GPA per department.
------------------------------------------------------------
SELECT D.Dept_name, AVG(G.Grade_point) AS Avg_GPA
FROM Grade G
JOIN Enrollment E ON G.Enroll_id = E.Enroll_id
JOIN Student S ON E.Std_id = S.Std_id
JOIN Department D ON S.Dept_id = D.Dept_id
GROUP BY D.Dept_name;

------------------------------------------------------------
-- 12. Total number of students enrolled in each semester.
------------------------------------------------------------
SELECT S.Sem_id, COUNT(E.Std_id) AS Total_Students
FROM Semester S
LEFT JOIN Enrollment E ON S.Sem_id = E.Sem_id
GROUP BY S.Sem_id;

------------------------------------------------------------
-- 13. Identify the professor teaching the highest number of students.
------------------------------------------------------------
SELECT Prof_name
FROM (
    SELECT P.Prof_name, COUNT(E.Std_id) AS Total_Students,
           RANK() OVER (ORDER BY COUNT(E.Std_id) DESC) AS rnk
    FROM Teaches T
    JOIN Professor P ON T.Prof_id = P.Prof_id
    JOIN Enrollment E ON T.Course_id = E.Course_id
    GROUP BY P.Prof_name
)
WHERE rnk = 1;

------------------------------------------------------------
-- 14. Percentage of students passing per course.
------------------------------------------------------------
SELECT C.Course_name,
       (SUM(CASE WHEN G.Grade_val <> 'F' THEN 1 ELSE 0 END) * 100.0 /
        COUNT(G.Grade_id)) AS Pass_Percentage
FROM Grade G
JOIN Enrollment E ON G.Enroll_id = E.Enroll_id
JOIN Courses C ON E.Course_id = C.Course_id
GROUP BY C.Course_name;

------------------------------------------------------------
-- 15. Departments with the highest number of failed students.
------------------------------------------------------------
SELECT D.Dept_name, COUNT(*) AS Failed_Students
FROM Grade G
JOIN Enrollment E ON G.Enroll_id = E.Enroll_id
JOIN Student S ON E.Std_id = S.Std_id
JOIN Department D ON S.Dept_id = D.Dept_id
WHERE G.Grade_val = 'F'
GROUP BY D.Dept_name
ORDER BY Failed_Students DESC;

------------------------------------------------------------
-- 16. Semester-wise report: Semester, Total Credits, Average Grade
------------------------------------------------------------
SELECT S.Sem_id,
       SUM(C.Credits) AS Total_Credits,
       AVG(G.Grade_point) AS Avg_Grade
FROM Semester S
JOIN Enrollment E ON S.Sem_id = E.Sem_id
JOIN Courses C ON E.Course_id = C.Course_id
JOIN Grade G ON E.Enroll_id = G.Enroll_id
GROUP BY S.Sem_id;

------------------------------------------------------------
-- 17. List professors earning above the average salary.
------------------------------------------------------------
SELECT Prof_name, Salary
FROM Professor
WHERE Salary > (SELECT AVG(Salary) FROM Professor);

------------------------------------------------------------
-- 18. Identify students who completed all prerequisites for 'AI Fundamentals'.
------------------------------------------------------------
SELECT S.Std_name
FROM Student S
WHERE NOT EXISTS (
    SELECT Pre_course_id
    FROM Prerequisites P
    WHERE P.Course_id = (SELECT Course_id FROM Courses WHERE Course_name = 'AI Fundamentals')
    MINUS
    SELECT C.Course_id
    FROM Enrollment E
    JOIN Courses C ON E.Course_id = C.Course_id
    WHERE E.Std_id = S.Std_id
);

------------------------------------------------------------
-- 19. Find courses that have never been opted by any student.
------------------------------------------------------------
SELECT Course_name
FROM Courses
WHERE Course_id NOT IN (SELECT Course_id FROM Enrollment);

------------------------------------------------------------
-- 20. Create a view: Student Name, Department, Total Credits, CGPA.
------------------------------------------------------------
CREATE OR REPLACE VIEW student_academic_summary AS
SELECT S.Std_name,
       D.Dept_name,
       SUM(C.Credits) AS Total_Credits,
       AVG(G.Grade_point) AS CGPA
FROM Student S
JOIN Enrollment E ON S.Std_id = E.Std_id
JOIN Courses C ON E.Course_id = C.Course_id
JOIN Grade G ON E.Enroll_id = G.Enroll_id
JOIN Department D ON S.Dept_id = D.Dept_id
GROUP BY S.Std_name, D.Dept_name;
