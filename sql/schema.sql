------------------------------------------------------------
-- 1. DEPARTMENT TABLE (created first - no FK yet)
------------------------------------------------------------
CREATE TABLE Department (
    Dept_id        VARCHAR2(5) PRIMARY KEY,
    Dept_name      VARCHAR2(30) UNIQUE NOT NULL,
    Total_faculty  NUMBER NOT NULL,
    Prof_id    VARCHAR2(5)     -- FK added later
);

------------------------------------------------------------
-- 2. PROFESSOR TABLE
------------------------------------------------------------
CREATE TABLE Professor (
    Prof_id      VARCHAR2(5) PRIMARY KEY,
    Prof_name    VARCHAR2(30) NOT NULL,
    Designation  VARCHAR2(20) NOT NULL,
    Ph_no        VARCHAR2(15) UNIQUE NOT NULL,
    Email        VARCHAR2(40) UNIQUE NOT NULL,
    DOB          DATE NOT NULL,
    Salary       NUMBER NOT NULL,
    Join_date    DATE NOT NULL,
    Dept_id      VARCHAR2(5),
    FOREIGN KEY (Dept_id) REFERENCES Department(Dept_id)
);

------------------------------------------------------------
-- 3. ADD FK: Department.Hod_Prof_id → Professor.Prof_id
------------------------------------------------------------
ALTER TABLE Department
ADD CONSTRAINT fk_hod_prof
FOREIGN KEY (Prof_id) REFERENCES Professor(Prof_id);

------------------------------------------------------------
-- 4. STUDENT TABLE
------------------------------------------------------------
CREATE TABLE Student (
    Std_id        VARCHAR2(5) PRIMARY KEY,
    Std_name      VARCHAR2(40) NOT NULL,
    Ph_no         VARCHAR2(15) UNIQUE NOT NULL,
    Email         VARCHAR2(40) UNIQUE NOT NULL,
    Address       VARCHAR2(100) NOT NULL,
    DOB           DATE NOT NULL,
    Admiss_date   DATE NOT NULL,
    Dept_id       VARCHAR2(5) NOT NULL,
    FOREIGN KEY (Dept_id) REFERENCES Department(Dept_id)
);

------------------------------------------------------------
-- 5. COURSES TABLE
------------------------------------------------------------
CREATE TABLE Courses (
    Course_id     VARCHAR2(5) PRIMARY KEY,
    Course_name   VARCHAR2(50) UNIQUE NOT NULL,
    Credits       NUMBER NOT NULL,
    Std_capacity  NUMBER NOT NULL,
    Dept_id       VARCHAR2(5) NOT NULL,
    FOREIGN KEY (Dept_id) REFERENCES Department(Dept_id)
);

------------------------------------------------------------
-- 6. SEMESTER TABLE
------------------------------------------------------------
CREATE TABLE Semester (
    Sem_id      VARCHAR2(5) PRIMARY KEY,
    St_date     DATE NOT NULL,
    End_date    DATE NOT NULL,
    Year        NUMBER NOT NULL
);

------------------------------------------------------------
-- 7. ENROLLMENT TABLE
------------------------------------------------------------
CREATE TABLE Enrollment (
    Enroll_id   VARCHAR2(5) PRIMARY KEY,
    Enroll_date DATE NOT NULL,
    Course_id   VARCHAR2(5) NOT NULL,
    Sem_id      VARCHAR2(5) NOT NULL,
    Std_id      VARCHAR2(5) NOT NULL,
    FOREIGN KEY (Course_id) REFERENCES Courses(Course_id),
    FOREIGN KEY (Sem_id) REFERENCES Semester(Sem_id),
    FOREIGN KEY (Std_id) REFERENCES Student(Std_id)
);

------------------------------------------------------------
-- 8. GRADE TABLE
------------------------------------------------------------
CREATE TABLE Grade (
    Grade_id     VARCHAR2(5) PRIMARY KEY,
    Grade_val    VARCHAR2(2) NOT NULL,
    Grade_point  NUMBER NOT NULL,
    Enroll_id    VARCHAR2(5) NOT NULL UNIQUE,
    FOREIGN KEY (Enroll_id) REFERENCES Enrollment(Enroll_id)
);

------------------------------------------------------------
-- 9. PREREQUISITES TABLE (self-relationship on courses)
------------------------------------------------------------
CREATE TABLE Prerequisites (
    Pre_id         VARCHAR2(5) PRIMARY KEY,
    Pre_course_id  VARCHAR2(5) NOT NULL,
    Course_id      VARCHAR2(5) NOT NULL,
    FOREIGN KEY (Pre_course_id) REFERENCES Courses(Course_id),
    FOREIGN KEY (Course_id) REFERENCES Courses(Course_id)
);

------------------------------------------------------------
-- 10. TEACHES TABLE (Professor ↔ Courses M:N)
------------------------------------------------------------
CREATE TABLE Teaches (
    Teach_id   VARCHAR2(5) PRIMARY KEY,
    Prof_id    VARCHAR2(5) NOT NULL,
    Course_id  VARCHAR2(5) NOT NULL,
    FOREIGN KEY (Prof_id) REFERENCES Professor(Prof_id),
    FOREIGN KEY (Course_id) REFERENCES Courses(Course_id)
);

------------------------------------------------------------
-- END OF SCHEMA
------------------------------------------------------------
