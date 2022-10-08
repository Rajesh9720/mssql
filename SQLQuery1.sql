--craete database
create database rajeshdb


--craete table and tablehanding
create table ITtraining
(empid int primary key IDENTITY(21,1),
empname varchar(100),
empDOB varchar(100),
department varchar(100),
empnumber varchar(100),
empmailid varchar(100),
qualification varchar(100),
dateofjoining varchar(100)
)
delete ITtraining where  empid > 26 
--craete table and tablehanding
insert ITtraining values ('rajesh','9-7-2000','IT',7358729566,'rajesh@allsec','bsc-cs','21-6-2022')
insert ITtraining values ('avinsh','18-8-2000','IT',7335470593,'avinshh@allsec','be-ece','21-6-2022')
insert ITtraining values ('viknesh','23-9-2000','IT',9235809566,'viknesh@allsec','bsc-cs','21-6-2022')
insert ITtraining values ('parthipan','19-9-2000','IT',5350729566,'parthipan@allsec','bsc-cs','21-6-2022')
insert ITtraining values ('vignesh','28-5-2000','IT',4398729566,'vignesh@allsec','bsc-cs','21-6-2022')
insert ITtraining values ('sathya','5-3-2000','IT',3858729566,'sathya@allsec','be-cs','21-6-2022')
insert ITtraining values ('rajesh',' ','IT',7358729566,' ','bsc-cs',' ','45')
insert ITtraining values ('divya','22-7-2000','IT',7358729566,'divya@allsec','bsc-cs','21-6-2022')
insert ITtraining values ('nanthini','13-8-2000','IT',7335470593,'nanthin@allsec','be-ece','21-6-2022')
insert ITtraining values ('kaviya','3-9-2000','IT',9235809566,'kaviya@allsec','bsc-cs','21-6-2022')
insert ITtraining values ('jothika','14-9-2000','IT',5350729566,'jothika@allsec','bsc-cs','21-6-2022')
insert ITtraining values ('jayapriya','22-5-2000','IT',4398729566,'jayapriya@allsec','bsc-cs','21-6-2022')
insert ITtraining values ('leka akka','15-3-2000','IT',3858729566,'leka akka@allsec','be-cs','21-6-2022')


select * from ITtraining


drop table ITtraining --total table delete
alter table ITtraining drop column dateofjoining --to delete the column
truncate table training --delete vaiue and it can not take back


delete ITtraining where  empid > 26 --delete vaiue and it can take back

update ITtraining set  totalmark ='80' where empid= '34' --use to update the values

alter table ITtraining add totalmark varchar(100) --create a new header in table

--aggregate function

select min (totalmark) 'low mark ' from ITtraining
select max (totalmark) from ITtraining
select avg (totalmark) from ITtraining
select count (totalmark) from ITtraining
select sum (totalmark) from ITtraining



select qualification, sum (totalmark) from ITtraining group by qualification

select * from ITtraining where empid = 22 --it show only the empid 22 line 
select * from ITtraining where empid <> 22 --without 22rd line rest of the line shows 
select * from ITtraining where empid != 22 --without 22rd line rest of the line shows 

select * from ITtraining where empid in (22,24,26) -- it show what you given ('  ')
select * from ITtraining where empname in ('rajesh','avinsh')

select * from ITtraining where empname like ('a%')
select * from ITtraining where empname like ('%a%')
select * from ITtraining where empname like ('%a')

select * from ITtraining where empname like '[A-b]%'

select * from ITtraining order by empname desc 
select * from ITtraining order by empname asc

select * from  ITtraining where totalmark=100

select * from  ITtraining where totalmark=100 and qualification ='bsc-cs'

select * from  ITtraining where totalmark=100 or qualification ='bsc-cs'

select * from ITtraining where qualification ='bsc-cs' and totalmark=100

select * from ITtraining where qualification !='bsc-cs' and totalmark=100

select * from ITtraining

select  upper (empname) from  ITtraining
select CONCAT ('raj' ,'esh') -- add the bothe value 
select getdate () 'rajesh time' --it gives as time,date 'rajesh time' is a Aliases name

alter table ITtraining add todaydate varchar(100)

update ITtraining set item ='windows 8' where empname='sathya'

select up where set item = getdate ()

update ITtraining set itemex = getdate () where empname='rajesh'

update ITtraining set itemex = dateadd(day,5,getdate()) where empname='sathya'

update ITtraining set item ='windows 8' where empname='sathya'

sp_help justtry

create table justtry (
fruitid int primary key IDENTITY(21,1),
fruitanme varchar (100),
fruitkg varchar(20), 
fruitcolour varchar(100),
fruity char constraint king check(fruity between 1 and 10))

insert justtry values ('apple','2kg','blue')
insert justtry values ('banana','3kg','yellow')

select * from justtry 
 
insert justtry (fruitanme,fruitkg)values ('apple','5kg')
insert justtry (fruitkg) values ('5kg')

drop table justtry

create table fruit(
fruitno int identity(1,1),
fruitproduct varchar(30),
salefruit int references justtry (fruitanme))

create database sony
use sony
create table phones (num int IDENTITY(1,1),phonename varchar(25)  primary key ,modelnum varchar(25))
select * from phones
insert into phones values ('realme','mi123')
insert into phones values ('redmi','mi983')
insert into phones values ('iphone','ap923')
insert into phones values ('asus','as643')
insert into phones values ('vivo','vi643')
drop table phones

drop table users

create table users (usernum int primary key IDENTITY(1,1),userphone varchar (25) references phones (phonename),yaerofuseage varchar(25))
insert into users values ('realme',2022)
select * from users
--Ranking Function

--1.row numberRANK()
--2.rank
--3.dense-rank

CREATE TABLE STUDENTS(STid int identity(1,1) primary key,
student_name varchar(200) not null,
standard_sec char(5),
Tamil_Marks int constraint chk_tm_marks check(Tamil_Marks <100),
Eng_Marks int constraint chk_eng_marks check(Eng_Marks <100),
Maths_Marks int constraint chk_mat_marks check(Maths_Marks <100),
Science_Marks int constraint chk_sc_marks check(Science_Marks <100),
Social_Marks int constraint chk_soc_marks check(Social_Marks <100))

select * from STUDENTS
insert into STUDENTS values ('Peter','V std',56,76,82,56,81),
('Sabarish','V std',62,71,45,71,25),
('Priya','V std',81,72,82,61,40),
('Ramesh','V std',71,81,82,82,81),
('Mithun','V std',91,85,80,50,41),
('Raja','V std',80,76,89,91,99),
('Harish','V std',47,62,21,56,21),
('Amutha','V std',90,80,91,92,70),
('Arul','V std',90,90,82,91,81),
('Mohini','V std',45,35,17,18,42),
('Johnson','V std',62,76,82,89,85),
('Ameer','V std',71,76,72,76,71),
('Bagad','V std',59,96,92,59,89)

select *,'scores' as 'totalmark' from STUDENTS

select *,  Tamil_Marks+Eng_Marks+Maths_Marks+Science_Marks+Social_Marks  as totalmark from STUDENTS

select *,  Tamil_Marks+Eng_Marks+Maths_Marks+Science_Marks+Social_Marks  as 'totalmark' from STUDENTS order by 'totalmark' desc

update students set Tamil_Marks=63 where stid=11

--row numberRANK()
select student_name,Tamil_Marks,ROW_NUMBER() over(order by Tamil_marks desc) from STUDENTS
--rank
select student_name, Tamil_Marks,rank() over(order by Tamil_Marks desc) from STUDENTS
--dense-rank
select student_name, Tamil_Marks,dense_rank() over(order by Tamil_Marks desc) from STUDENTS

--row numberRANK()
select *, Tamil_Marks+Eng_Marks+Maths_Marks+Science_Marks+Social_Marks as 'totalmarks',ROW_NUMBER() over
(order by (Tamil_Marks+Eng_Marks+Maths_Marks+Science_Marks+Social_Marks) desc)'rownumber' from STUDENTS

--rank
select *, Tamil_Marks+Eng_Marks+Maths_Marks+Science_Marks+Social_Marks as 'totalmarks',rank() over
(order by (Tamil_Marks+Eng_Marks+Maths_Marks+Science_Marks+Social_Marks) desc) 'rank' from STUDENTS

--dense-rank
select *, Tamil_Marks+Eng_Marks+Maths_Marks+Science_Marks+Social_Marks as 'totalmarks',dense_rank() over
(order by (Tamil_Marks+Eng_Marks+Maths_Marks+Science_Marks+Social_Marks) desc) 'danserank' from STUDENTS

--ntile it will split the group
select *, student_name, ntile(3) over
(order by student_name desc) 'danserank' from STUDENTS

select HOST_ID()
select HOST_NAME()
select @@SERVERNAME
select user

select * from information_schema. tables

create function rajeshid (@id int)
returns varchar(500)
as
	begin
		return (select empname from ITtraining where empid=@id) 
	end

	select dbo.rajeshid (24)

create function gettable ()
returns table 
as 
return  select * from ITtraining 

select * from gettable()
(empid int primary key IDENTITY(21,1),
empname varchar(100),
empDOB varchar(100),
department varchar(100),
empnumber varchar(100),
empmailid varchar(100),
qualification varchar(100),
dateofjoining varchar(100)

create procedure proname
as 
begin
select empid 'proid',empname 'proname',empDOB 'prodob' from ITtraining
end
exec proname
select * from proname

----------------------------------------------------------------------------------------------
--System Scalar Function
select abs (-10.67)
select rand (10)
select round ( 17.56719,3 )
select upper ('dotnet')
select lower ('DOTNET')
select ltrim (' dotnet')
select convert (int, 15.56)
 
--craete table and tablehanding
create table frnd
(empid int primary key IDENTITY(21,1),
empname varchar(100),
empDOB varchar(100),
department varchar(100),
)

--Built-In functions

SELECT LEFT('rajesh kumar', 5) AS 'Name';
SELECT LEN('rajesh kumar') AS 'Co';
SELECT LOWER('rajesh') AS 'Name';
SELECT LTRIM('       rajesh') AS [Name];
SELECT REPLICATE('rajesh like in sql', 4) AS [FOUR];
SELECT REVERSE('rajesh') AS [EMAN];
SELECT 'RAJESH' + SPACE(50) + 'kumar' AS [Name];
SELECT DATEADD(YEAR, 5, '2021-12-25 13:50:47.234') AS [DateAdd];
SELECT DATEADD(day, 8, '2021-12-25 13:50:47.234') AS [DateAdd];
SELECT DATEADD(month, 5, '2021-12-25 13:50:47.234') AS [DateAdd];
SELECT DATENAME(MONTH, '2021/7/25') AS [DateNameMonth],DATENAME(WEEKDAY, '2021/7/22') AS [DateNameDay];

----------------------------------------------------------------------------------------------------------
--03-10-2022 
/* 1.INNER JOIN 
   2.LEFT JOIN
   3.RIGHT JOIN
*/
--Joins

--BOOK Table
create table book (id int IDENTITY(1,1),title varchar(100),type varchar(100),author_id varchar(100),editor_id varchar(100),translator_id varchar(100))
insert book values ('time to grow up!','original','11','21','')
insert book values ('your trip','translated','15','22','32')
insert book values ('lovely love','original','14','24','')
insert book values ('dream your love','original','11','24','')
insert book values ('oranges','translated','12','25','31')
insert book values ('your happy life','translated','15','22','33')
insert book values ('applied AI','translated','13','23','34')
insert book values ('my last book','original','11','28','')

--authors Table
create table authors(id int IDENTITY(4,1),first_name varchar (100),last_name varchar(100))
insert authors values ('Ellen','writer')
insert authors values ('olga','savelieva')
insert authors values ('jack','smart')
insert authors values ('donald','brain')
insert authors values ('yao','dou')
drop table authors

select * from book
select * from authors

--it show Exact match in book ii and author id, it not show the extra value in book and author table 
select book.id,book.title,authors.first_name,authors.last_name
from book 
inner join authors
on book.id=authors.id
order by book.id

--left means what is the 1st table its called left in this case book is this the 1st table,
--book show left is book ,left join it show exact match and extra values in the left table
select book.id,book.title,authors.first_name,authors.last_name
from book 
left join authors
on book.id=authors.id;

--right means what is the 2st table its called right in this case author is this the 2st table,
--author show right is auther ,right join it show exact match and extra values in the right table
select book.id,book.title,authors.first_name,authors.last_name
from book 
right join authors
on book.id=authors.id;



-- 04-10-2022

/*	1.cross join
	2.self join 
	3.equi join 
	4.view 
*/ 
--self Join
create table boss (boss_s_ID int identity(1,1),bossname varchar (100),bossid varchar (100))
insert boss values ('rajesh','2')
insert boss values ('avinash','1')
insert boss values ('viknesh','4')
insert boss values ('partha','3')
select * from boss

select b1.bossname,b2.bossname from boss b1, boss b2 where  b2.boss_s_ID=b1.bossid

-------------------------------------------------------
 