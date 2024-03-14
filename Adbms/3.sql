-- create database university;
-- use university;
-- create table Student(Name varchar(50), Student_number int primary key, Class int, Major varchar(25));
-- insert into Student values('Smith',17,1,'CS');
-- insert into Student values('Brown',8,2,'CS');
-- create table Course(Course_name varchar(150), Course_number varchar(25) primary key, Credit_hours varchar(3), Department varchar(25));
-- alter table Course modify Credit_hours int;
-- insert into Course values('Intro to Computer Science','CS1310',4,'CS'),('Data Structures','CS3320',4,'CS'),
-- ('Discrete Mathematics','MATH2410',3,'MATH'),('Database','CS3380',3,'CS');
-- create table Section(Section_identifier int primary key, Course_number varchar(25), Semester varchar(10),Year int, Instructor varchar(50), foreign key(Course_number) references Course(Course_number));
-- insert into Section values(85,'MATH2410','Fall',07,'King'),(92,'CS1310','Fall',07,'Anderson'),(102,'CS3320','Spring',08,'Knuth'),
-- (112,'MATH2410','Fall',08,'Chang'),(119,'CS1310','Fall',08,'Anderson'),(135,'CS3380','Fall',08,'Stone');
-- create table Grade_Report(Student_number int, Section_identifier int, Grade varchar(1), foreign key(Student_number) references Student(Student_number),
-- foreign key(Section_identifier) references Section(Section_identifier), primary key(Student_number, Section_identifier));
-- insert into Grade_Report values(17,112,'B'),(17,119,'C'),(8,85,'A'),(8,92,'A'),(8,102,'B'),(8,135,'A');
-- create table Prerequisite(Course_number varchar(25), Prerequisite_number varchar(25), foreign key(Course_number) references Course(Course_number),
-- foreign key(Prerequisite_number) references Course(Course_number), primary key(Course_number, Prerequisite_number));
-- insert into Prerequisite values('CS3380','CS3320'),('CS3380','MATH2410'),('CS3320','CS1310');
-- select s.Name, s.Student_number, g.Grade, g.Section_identifier, c.Course_name, se.Course_number from Student s, Grade_Report g, Course c, Section se where ;
-- select s.Name, s.Student_number, g.Grade, c.Course_name from Student s
-- INNER JOIN Grade_Report g ON s.Student_number = g.Student_number INNER JOIN Section se ON 
-- g.Section_identifier = se.Section_identifier INNER JOIN Course c ON c.Course_number = se.Course_number WHERE s.Name="Smith";

-- select s.Name, g.Grade from Course c INNER JOIN Section se ON c.Course_number = se.Course_number
--  INNER JOIN Grade_Report g ON se.Section_identifier = g.Section_identifier INNER JOIN Student s ON 
-- g.Student_number = s.Student_number WHERE c.Course_name="Database" AND se.Semester = "Fall" AND se.Year = 08;

-- select c.Course_name from Prerequisite p INNER JOIN Course c ON p.Course_number = c.Course_number 
-- WHERE c.Course_name = "Database";
-- use university;

-- select Course_name as Prerequisite_name,Prerequisite_number from prerequisite inner join course on 
-- prerequisite.Prerequisite_number=course.Course_number where prerequisite.Course_number=(select course.Course_number from 
-- course where course.Course_name="Database") ; 

-- select name from student where major="CS";

-- select c.Course_name from course c inner join section s on c.Course_number=s.Course_number
--  where s.Instructor="King" and Year in (07,08);

-- select Course_number,Semester,Year, Instructor,count(Student_number) from section inner join 
-- Grade_report on Section.Section_identifier=Grade_report.Section_identifier 
-- group by Grade_report.Section_identifier having instructor="King"; 

-- select Name,course.Course_number,Course_name,Credit_hours,Semester,Year,Grade 
-- from student inner join grade_report on student.Student_number = grade_report.Student_number 
-- inner join section on grade_report.Section_identifier=section.Section_identifier 
-- inner join course on section.Course_number=course.Course_number where Class=2 and Major="cs";

-- insert into Student values('Johnson',25,1,'Math');


-- SET SQL_SAFE_UPDATES=0;
-- update Student set class=2 where Name='Smith';
-- SET SQL_SAFE_UPDATES=1;

-- insert into Course values("Knowledge Engineering","CS4390",3,"CS");

-- delete from student where name="Smith" and student_number=17;

-- create view stud as select Name from student where major="CS";

-- select * from stud;
