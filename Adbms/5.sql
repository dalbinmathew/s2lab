-- create database store;
-- use store;
-- create table product (pdtid int primary key, pname varchar(50), price int, quantity int);
-- call insertproduct(1,"choclate",100,2);
-- call insertproduct(1,"rice",0,2);
-- call insertproduct(2,"rice",5,0);

-- procedure

-- CREATE DEFINER=`root`@`localhost` PROCEDURE `insertproduct`(in barcode int,
-- in pname varchar(30),in price double,in quantity double)
-- BEGIN
-- if(price>0 && quantity >=0)
-- then
-- insert into product values(barcode,pname,price,quantity);
-- end if;
-- END