STORED PROCEDURES
1.factorial

CREATE DEFINER=`root`@`localhost` PROCEDURE `factorial`()
BEGIN
DECLARE fact INT DEFAULT 1;
DECLARE num INT DEFAULT 5;
WHILE num > 0
do
set fact = fact*num;
set num = num-1;
end while;
select fact;
END

2.user input factorial

CREATE DEFINER=`root`@`localhost` PROCEDURE `in_fact`( IN num int)
BEGIN
DECLARE fact INT DEFAULT 1;
WHILE num > 0
do
set fact = fact*num;
set num = num-1;
end while;
select fact;
END

3.studentdata

CREATE DEFINER=`root`@`localhost` PROCEDURE `getstudentdata`()
BEGIN
select * from course;
END

4.odd or even

CREATE DEFINER=`root`@`localhost` PROCEDURE `oddeven`(IN num int)
BEGIN
DECLARE odd varchar(25) DEFAULT 'odd number';
DECLARE even varchar(25) DEFAULT 'even number';
if num % 2 = 0
then
select even;
else
select odd;
end if;
END

5.grade

CREATE DEFINER=`root`@`localhost` PROCEDURE `grade`(IN grade varchar(3))
BEGIN
DECLARE A varchar(25) DEFAULT 'Your grade is A';
DECLARE B varchar(25) DEFAULT 'Your grade is B';
DECLARE C varchar(25) DEFAULT 'Your grade is C';
DECLARE D varchar(25) DEFAULT 'Your grade is D';
DECLARE Def varchar(25) DEFAULT 'Wrong grade';
if grade = 'A'
then
select A;
elseif grade = 'B'
then
select B;
elseif grade = 'C'
then
select C;
elseif grade = 'D'
then
select D;
else
select Def;
end if;
END

6. positive,negative,zero

CREATE DEFINER=`root`@`localhost` PROCEDURE `pnz`(in num int)
BEGIN
DECLARE p varchar(25) DEFAULT 'positive number';
DECLARE n varchar(25) DEFAULT 'negative number';
DECLARE z varchar(25) DEFAULT 'zero';
if num > 0
then
select p;
elseif num <0
then
select n;
else
select z;
end if;
END

7.dayname

CREATE DEFINER=`root`@`localhost` PROCEDURE `dateday`(IN datee varchar(10))
BEGIN
select dayname(datee);
END