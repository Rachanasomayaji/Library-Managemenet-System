--issuing book and returning book

--stored procedures(1)
alter procedure issue_book
	@bookId char(13),
	--@librarein int,
	@Checkdate date,
	@flag bit
as
begin

	Declare @duedate datetime
	set @duedate=DATEADD(day,14,@checkdate)

    update book3 set copies=copies-1 where isbn=@bookid and @flag=1

   --update book2 set copies=copies-1 where  @flag=0
end

        exec issue_book 'AA1' ,'2022-05-28' ,1
       --select  * from book_issue
	   --SELECT * FROM book3
---------------------------------------------------------------------------

--Returning book(2)
alter procedure returning_book

as
begin
	  update member set balance= balance + (select sum(price) from book3 where usn=1) where usn=1 
	--update book2 set copies=copies+1 where isbn=@bk_isbn;
end

	 exec returning_book 
	--select * from member
	--select * from book2
------------------------------------------------------------------------------
--top 10 customers(3)
alter procedure top10customers

as
begin
		select  top 3 usn,count(usn) NoofUSN from book3 group by usn having COUNT(*)>max(usn)
end
     execute top10customers
	 select * from book3

-----------------------------------------------------------------------------
select COUNT(isbn) from book2 group by isbn having COUNT(*)>1
select COUNT(book_isbn) from book_issue group by book_isbn having COUNT(book_isbn)>1


select book_isbn from book_issue where book_isbn=(select isbn from book2)

--feeStructure (4)
ALTER procedure feeStructure

as
begin
		update member set balance= balance +10% +(select sum(price) from book3 where usn=1) where usn=1
end

		execute feeStructure
 --select * from member
---------------------------------------------------------------------------------

--Stored procedure ToRevenue (5)
ALTER procedure totRevenue

as
begin

	select year(due_date) as year,sum(price*copies) as totalRevenue
	from book3,book_issue2
	where book3.isbn=book_issue2.book_isbn 
	group by year(due_date);
end

	exec totRevenue
---------------------------------------------------------------------------------
--stored procedure HighestBook (6)
ALTER procedure HighestBook

as
begin
	select b.book_isbn,COUNT(b.book_isbn) HighestSale from book_issue2 b group by b.book_isbn having COUNT(book_isbn)>3
END

	EXEC HighestBook

	select * from book3

	--------------------------------demo new data creation-----------
create table demo1(cardno int,usn int)

insert into demo1 values(01,11)
insert into demo1 values(02,12)

---new book creation---
alter procedure Newbook

@cardno int,
@usn varchar(10)
as
begin
   if @cardno  in (select cardno from demo1 where usn=@usn)
    insert into  demo1 values(03,13)
   else
	print 'The given data is already created';
end

exec Newbook 03,11
 select * from demo1
select * from book3
select * from Student1

---new Student----
alter procedure newstd

	@cardno int,
	@usn varchar(10)
as
begin
   if @cardno not in (select cardno from student where usn=@usn)
    insert into  Student values(04,14)
   else
	print 'The given data is already created';
end
	select * from Student
	exec newstd 04,'B6304111'
---------------------------------------------------------
---new Book creation and deletion----
alter procedure newBook

@title varchar(30),
@publishDate date

as
begin
	if  @title not in(select title from book3 where publishDATE=@publishDate)
     		--print 'inserted';
   		insert into book3 values('AA120', 'The history()', 'F. Scott ', 'Fiction', 432, 121,5,'2025-01-10')
else
		delete book3 where title=@title and publishDATE=@publishDate
		print 'deleted';
end

 exec  newBook 'The history()','2025-01-10'

 --select * from book3
 -----------------------------------------------------------   
	--Create a user details

alter procedure userDetails

@usn varchar(15)
as
begin 
select top 1 m.usn,m.name,m.username,m.balance,b.price,b.category from member m inner join book3 b on m.usn=b.usn where m.usn=@usn
end
select * from member
select * from book3


exec userDetails '1'
----------------------------------------------------------------
alter procedure MaintainUserInfor
@username varchar(20),
@usn varchar(10)
as
begin
  Declare @num table (num int identity(18,1))
if @username not in(select username from member where usn=@usn)
   insert into member values(20,'Rachanahn','','rachana','hnrachna@gmail.com',0,1)
 else
   update member set password='rach123' where username=@username
   -- delete member where username=@username
   end
 

exec MaintainUserInfor 'Rachanahn',1


select * from member


----------------------------------------------------------------------------------

create table sample2(password varchar(10),password1 int)


insert into sample2 values('aa1',01)
insert into sample2 values('aa2',02)


alter procedure samle2
@passwd varchar(20)
--@passwd1 int

as
begin
update sample2 set password=password+'@passwd' where password1=01
end

exec samle2 '34f3'
select * from sample2