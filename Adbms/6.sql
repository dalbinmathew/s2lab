create database test;
use test;
create table product (pdtid int primary key, pname varchar(50), price int, quantity int);
create table sale (saleid int primary key, deliveryaddress varchar(100));
alter table product rename column quantity to qtyinstock;
create table saleitem (pdtid int, saleid int, qty int, foreign key (saleid) references sale(saleid), 
foreign key (pdtid) references product(pdtid), primary key(saleid, pdtid));


CREATE TRIGGER updateavailablequantity 
AFTER INSERT ON saleitem 
FOR EACH ROW 
    UPDATE product 
    SET qtyinstock = qtyinstock - NEW.qty 
    WHERE pdtid = NEW.pdtid; 
    
    
insert into product values(101,"pencil",5,10);
select * from product;
insert into product values(102,"pen",8,10);
insert into sale(saleid,deliveryaddress) values(001,"home123"),(002,"home234");
insert into saleitem values(102,002,10);
insert into saleitem values(102,001,2);
set sql_safe_updates=0;
show triggers;
insert into saleitem values(101,001,1);
insert into saleitem values(101,002,3);
select * from saleitem;