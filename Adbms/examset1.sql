use test;
create table Emp(Eid int primary key, Ename varchar(50), Age int, Salary int);
create table Manager(Mid int primary key, Mname varchar(50));
create table Dept(Did int, Budget int, Mid int, foreign key(Mid) references Manager(Mid), primary key(Did,Mid));
create table Works(Eid int, Did int, Category varchar(50), foreign key(Eid) references Emp(Eid), foreign key(Did) references Dept(Did));

insert into Emp(Eid,Ename,Age,Salary) values(01,"Abin",21,18000),(02,"Alan",23,22000),(03,"Bibin",28,35000),
(04,"Saran",30,33000);

insert into Manager(Mid,Mname) values(50,"Manu"),(51,"Paul"),(52,"Tom");
insert into Dept(Did,Budget,Mid) values(100,1500000,50),(101,22000000,51),(102,25000000,52);

insert into Works(Eid,Did,Category) values(01,100,"full time"),(02,101,"part time"),(03,101,"full time"),(04,102,"full time");

select e.Ename,e.Age,d.Did from Emp e join Works w on w.Eid = e.Eid join Dept d on w.Did = d.Did where w.Did=101;

select e.Ename, e.Salary, w.Did from Emp e join Works w on e.Eid = w.Eid where e.Salary > 30000;

select m.Mid,m.Mname from Manager m join Dept d on m.Mid = d.Mid where d.Budget > 2000000;

select count(Category), Category from Works group by Category;

-- pnsql problem
-- CREATE DEFINER=`root`@`localhost` PROCEDURE `manageridsearch`(in num INT)
-- BEGIN
-- select Mname from Manager where Mid=num;
-- END

call manageridsearch(52);