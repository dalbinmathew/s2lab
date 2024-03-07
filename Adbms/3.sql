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


