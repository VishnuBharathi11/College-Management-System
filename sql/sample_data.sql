------------------------------------------------------------
-- SAMPLE DATA FOR Department (10 rows)
------------------------------------------------------------
INSERT INTO Department VALUES ('D01', 'Computer Science', 40, NULL);
INSERT INTO Department VALUES ('D02', 'Information Tech', 35, NULL);
INSERT INTO Department VALUES ('D03', 'Electronics', 30, NULL);
INSERT INTO Department VALUES ('D04', 'Mechanical', 25, NULL);
INSERT INTO Department VALUES ('D05', 'Civil', 22, NULL);
INSERT INTO Department VALUES ('D06', 'AI & DS', 28, NULL);
INSERT INTO Department VALUES ('D07', 'Cyber Security', 20, NULL);
INSERT INTO Department VALUES ('D08', 'Data Science', 18, NULL);
INSERT INTO Department VALUES ('D09', 'Software Engg', 32, NULL);
INSERT INTO Department VALUES ('D10', 'Physics', 15, NULL);

------------------------------------------------------------
-- SAMPLE DATA FOR Professor (10 rows)
------------------------------------------------------------
INSERT INTO Professor VALUES ('P01','Arun Kumar','HOD','9876543210','arun@clg.edu', DATE '1980-03-10',90000,DATE '2010-06-15','D01');
INSERT INTO Professor VALUES ('P02','Meena Devi','Asso Prof','9876543211','meena@clg.edu', DATE '1981-11-21',85000,DATE '2012-01-12','D02');
INSERT INTO Professor VALUES ('P03','Ravi Shankar','Assistant Prof','9876543212','ravi@clg.edu', DATE '1985-08-12',70000,DATE '2015-07-20','D03');
INSERT INTO Professor VALUES ('P04','Divya Bharathi','HOD','9876543213','divya@clg.edu', DATE '1979-01-30',95000,DATE '2008-03-19','D04');
INSERT INTO Professor VALUES ('P05','Suresh Kumar','Asso Prof','9876543214','suresh@clg.edu', DATE '1983-12-10',82000,DATE '2013-10-11','D05');
INSERT INTO Professor VALUES ('P06','Ananya Singh','Assistant Prof','9876543215','ananya@clg.edu', DATE '1989-09-22',65000,DATE '2018-06-01','D06');
INSERT INTO Professor VALUES ('P07','Naveen Raj','HOD','9876543216','naveen@clg.edu', DATE '1977-05-09',98000,DATE '2005-09-29','D07');
INSERT INTO Professor VALUES ('P08','Harini','Asso Prof','9876543217','harini@clg.edu', DATE '1988-04-14',78000,DATE '2017-02-05','D08');
INSERT INTO Professor VALUES ('P09','Vignesh','Assistant Prof','9876543218','vignesh@clg.edu', DATE '1990-02-11',62000,DATE '2019-09-03','D09');
INSERT INTO Professor VALUES ('P10','Lakshmi','Professor','9876543219','lakshmi@clg.edu', DATE '1975-08-18',100000,DATE '2003-01-22','D10');

------------------------------------------------------------
-- SAMPLE DATA FOR Courses (10 rows)
------------------------------------------------------------
INSERT INTO Courses VALUES ('C01','DBMS',4,60,'D01');
INSERT INTO Courses VALUES ('C02','OOPS',3,50,'D01');
INSERT INTO Courses VALUES ('C03','Computer Networks',4,55,'D02');
INSERT INTO Courses VALUES ('C04','Digital Electronics',3,45,'D03');
INSERT INTO Courses VALUES ('C05','Thermodynamics',4,60,'D04');
INSERT INTO Courses VALUES ('C06','Fluid Mechanics',3,50,'D05');
INSERT INTO Courses VALUES ('C07','AI Fundamentals',4,70,'D06');
INSERT INTO Courses VALUES ('C08','Cyber Forensics',4,65,'D07');
INSERT INTO Courses VALUES ('C09','Data Mining',3,55,'D08');
INSERT INTO Courses VALUES ('C10','Advanced Java',4,60,'D09');

------------------------------------------------------------
-- SAMPLE DATA FOR Semester (8 rows)
------------------------------------------------------------
INSERT INTO Semester VALUES ('S01', DATE '2021-01-01', DATE '2024-05-15', 2024);
INSERT INTO Semester VALUES ('S02', DATE '2021-06-01', DATE '2024-11-15', 2024);

INSERT INTO Semester VALUES ('S03', DATE '2022-01-01', DATE '2023-05-15', 2023);
INSERT INTO Semester VALUES ('S04', DATE '2022-06-01', DATE '2023-11-15', 2023);

INSERT INTO Semester VALUES ('S05', DATE '2023-01-01', DATE '2022-05-15', 2022);
INSERT INTO Semester VALUES ('S06', DATE '2023-06-01', DATE '2022-11-15', 2022);

INSERT INTO Semester VALUES ('S07', DATE '2024-01-01', DATE '2021-05-15', 2021);
INSERT INTO Semester VALUES ('S08', DATE '2024-06-01', DATE '2021-11-15', 2021);


------------------------------------------------------------
-- SAMPLE DATA FOR Student (10 rows)
------------------------------------------------------------
INSERT INTO Student VALUES ('ST01','Rahul Kumar','9000011111','rahul@mail.com','Chennai',DATE '2003-02-10',DATE '2021-07-01','D01');
INSERT INTO Student VALUES ('ST02','Priya Sharma','9000011112','priya@mail.com','Bangalore',DATE '2004-01-15',DATE '2021-07-01','D02');
INSERT INTO Student VALUES ('ST03','Aravind','9000011113','aravind@mail.com','Coimbatore',DATE '2003-08-20',DATE '2021-07-01','D03');
INSERT INTO Student VALUES ('ST04','Deepika','9000011114','deepika@mail.com','Chennai',DATE '2004-06-12',DATE '2021-07-01','D04');
INSERT INTO Student VALUES ('ST05','Kamal','9000011115','kamal@mail.com','Madurai',DATE '2003-11-05',DATE '2021-07-01','D05');
INSERT INTO Student VALUES ('ST06','Sneha','9000011116','sneha@mail.com','Trichy',DATE '2004-03-15',DATE '2021-07-01','D06');
INSERT INTO Student VALUES ('ST07','Yogesh','9000011117','yogesh@mail.com','Salem',DATE '2004-01-01',DATE '2021-07-01','D07');
INSERT INTO Student VALUES ('ST08','Harsha','9000011118','harsha@mail.com','Chennai',DATE '2003-04-18',DATE '2021-07-01','D08');
INSERT INTO Student VALUES ('ST09','Sangeetha','9000011119','sangeetha@mail.com','Erode',DATE '2004-05-10',DATE '2021-07-01','D09');
INSERT INTO Student VALUES ('ST10','Rishi','9000011120','rishi@mail.com','Thanjavur',DATE '2003-09-09',DATE '2021-07-01','D10');

------------------------------------------------------------
-- SAMPLE DATA FOR Enrollment (10 rows)
------------------------------------------------------------
INSERT INTO Enrollment VALUES ('E01',DATE '2024-01-10','C01','S01','ST01');
INSERT INTO Enrollment VALUES ('E02',DATE '2024-01-12','C02','S01','ST02');
INSERT INTO Enrollment VALUES ('E03',DATE '2024-01-13','C03','S01','ST03');
INSERT INTO Enrollment VALUES ('E04',DATE '2024-01-15','C04','S01','ST04');
INSERT INTO Enrollment VALUES ('E05',DATE '2024-01-18','C05','S01','ST05');
INSERT INTO Enrollment VALUES ('E06',DATE '2024-01-20','C06','S01','ST06');
INSERT INTO Enrollment VALUES ('E07',DATE '2024-01-22','C07','S01','ST07');
INSERT INTO Enrollment VALUES ('E08',DATE '2024-01-25','C08','S01','ST08');
INSERT INTO Enrollment VALUES ('E09',DATE '2024-01-27','C09','S01','ST09');
INSERT INTO Enrollment VALUES ('E10',DATE '2024-01-30','C10','S01','ST10');

------------------------------------------------------------
-- SAMPLE DATA FOR Grade (10 rows)
------------------------------------------------------------
INSERT INTO Grade VALUES ('G01','A',9,'E01');
INSERT INTO Grade VALUES ('G02','B',8,'E02');
INSERT INTO Grade VALUES ('G03','A',9,'E03');
INSERT INTO Grade VALUES ('G04','C',6,'E04');
INSERT INTO Grade VALUES ('G05','F',0,'E05');
INSERT INTO Grade VALUES ('G06','A',9,'E06');
INSERT INTO Grade VALUES ('G07','B',8,'E07');
INSERT INTO Grade VALUES ('G08','A',9,'E08');
INSERT INTO Grade VALUES ('G09','D',5,'E09');
INSERT INTO Grade VALUES ('G10','F',0,'E10');

------------------------------------------------------------
-- SAMPLE DATA FOR Prerequisites (10 rows)
------------------------------------------------------------
INSERT INTO Prerequisites VALUES ('PR01','C02','C01');
INSERT INTO Prerequisites VALUES ('PR02','C01','C03');
INSERT INTO Prerequisites VALUES ('PR03','C04','C03');
INSERT INTO Prerequisites VALUES ('PR04','C03','C07');
INSERT INTO Prerequisites VALUES ('PR05','C06','C05');
INSERT INTO Prerequisites VALUES ('PR06','C08','C07');
INSERT INTO Prerequisites VALUES ('PR07','C02','C10');
INSERT INTO Prerequisites VALUES ('PR08','C07','C09');
INSERT INTO Prerequisites VALUES ('PR09','C08','C09');
INSERT INTO Prerequisites VALUES ('PR10','C04','C02');

------------------------------------------------------------
-- SAMPLE DATA FOR Teaches (10 rows)
------------------------------------------------------------
INSERT INTO Teaches VALUES ('T01','P01','C01');
INSERT INTO Teaches VALUES ('T02','P02','C02');
INSERT INTO Teaches VALUES ('T03','P03','C03');
INSERT INTO Teaches VALUES ('T04','P04','C04');
INSERT INTO Teaches VALUES ('T05','P05','C05');
INSERT INTO Teaches VALUES ('T06','P06','C06');
INSERT INTO Teaches VALUES ('T07','P07','C07');
INSERT INTO Teaches VALUES ('T08','P08','C08');
INSERT INTO Teaches VALUES ('T09','P09','C09');
INSERT INTO Teaches VALUES ('T10','P10','C10');
