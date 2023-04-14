--issuing book and returning book
use LIBRARYMANAGEMENT
--stored procedures(1)
-------------------------------------------------------------------------------------------
------Registering account-----------------(1)

alter procedure RegisteringAccount
	@id int,
	@username varchar(20),
	@password varchar(20),
	@name varchar(20),
	@gmail varchar(50),
	@balance int,
	@usn int,
	@locations varchar(20)

as
begin
	if @username not in(select username from member)
		insert into member values(@id,@username,@password,@name,@gmail,@balance,@usn,@locations)
	else
		  print 'already existed'
		 select * from member where @username=username 
	
end
    execute  RegisteringAccount 2,'ab1','robin012','Abby','abby@gmail.com',886,2,'Europe'
----------------------------------------------------------------------------------------------
-----------Login Page-------------------(2)
alter procedure loginPage

	 @username varchar(20),
	 @password varchar(20),
	 @usn int

 as
 begin
  
	  if @username in(select username from member where usn=@usn)
		 if @password in(select password from member where usn=@usn)
		   exec SearchBook 'Fantasy','rac'
		 else
		  print 'Please check your password'
	  else
		print 'Not registered in the name ,please create an account'
end

execute loginPage 'Rose11','rose01',1
select * from member

---------------------------------------------------------------------------------------------
 -----------------------------------------------------------   
	-------------Create a user details(03)-----

alter procedure userDetails

    @usn varchar(15)
as
begin 
   select top 1 m.usn,m.name,m.username,m.balance,b.price,b.category from member m inner join book3 b on m.usn=b.usn where m.usn=@usn
end
	select * from member
	select * from book3


  exec userDetails '1'

-------------------------------------------------------------
--------------MAINTAINUSERdEATILS-----(04)
alter procedure MaintainUserInfor
	@username varchar(20),
	@usn varchar(10)
as
begin
	  Declare @num table (num int identity(18,1))
	 if @username not in(select username from member where usn=@usn)
	   insert into member values(20,'Rachanahn','','rachana','hnrachna@gmail.com',0,1) 
	 else
	   update member set password='robin012' where username=@username
	   -- delete member where username=@username
   end

     exec MaintainUserInfor 'abby11',2
---------------------------------------------------
-----------------Issuing book--------------------(05)
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

--------------Returning book(06)----------------------------
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
--------------------top 10 customers(07)
Alter procedure top10customers

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

------------------feeStructure (08)--------------
ALTER procedure feeStructure

as
begin
		update member set balance= balance +10% +(select sum(price) from book3 where usn=1) where usn=1
end

		execute feeStructure
 -------------------select * from member
---------------------------------------------------------------------------------

---------------Stored procedure ToRevenue-------------------- (09)
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
----------------------stored procedure HighestBook------------------------------- (10)
ALTER procedure HighestBook

as
begin
	 select b.book_isbn,COUNT(b.book_isbn) HighestSale from book_issue2 b group by b.book_isbn having COUNT(book_isbn)>3
END

	EXEC HighestBook

	select * from book3


------------------------------------demo new data creation(7)-----------
create table demo1(cardno int,usn int)

insert into demo1 values(01,11)
insert into demo1 values(02,12)

---------------new book creation(11)----------------------
alter procedure Newbook

	@cardno int,
	@usn varchar(10)
as
begin
	   if @cardno not in (select cardno from demo1 where usn=@usn)
		 insert into  demo1 values(03,13)
	   else
		print 'The given data is already created';
end

exec Newbook 03,13
 select * from demo1
select * from book3
select * from Student1

---------------------new Student(12)------------------------
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
	exec newstd 04,'14'
---------------------------------------------------------
---new Book creation and deletion(13)----

alter procedure newBook

	@title varchar(30),
	@publishDate date

as
begin
		if  @title not in(select title from book3 where publishDATE=@publishDate)
     		-- print 'inserted'
   			insert into book3 values('AA120', 'The history()', 'F. Scott ', 'Fiction', 432, 121,5,'2025-01-10')
		else
			delete book3 where title=@title and publishDATE=@publishDate
			print 'deleted';
end

 exec  newBook 'The history()','2025-01-10'

 ---------select * from book3----------------
 -----------------------------------------------------------   
	         ----Create a user details(14)-----

alter procedure userDetails

        @usn varchar(15)
as
begin 
        select top 1 m.usn,m.name,m.username,m.balance,b.price,b.category from member m inner join book3 b on m.usn=b.usn where m.usn=@usn
end
	select * from member
	select * from book3


exec userDetails '1'
---------------------------------------------------------------------------------

---Searching for the book---(15)

alter procedure SearchBook
		@bookName varchar(20),
		@isbn char(13)
as
begin
		if @bookName=(select title from book3 where isbn=@isbn)
		 select title from book3 where isbn=@isbn
		else
		 insert into book3 values('rac','Fantasy','H.N','Sci-Fi',100,80,10,'2022-01-01')

end

	exec SearchBook 'Fantasy','rac'

select * from book3

------------------------------------------------------------------------------------------
---top one Author----(16)
alter procedure top1Author

as
begin
	select top 1 usn,title,count(usn) noOfTimes,MAX(author) BestAuthors from book2 group by usn,title having COUNT(*)>MAX(usn)
 end

 exec top1Author 

 --select usn,COUNT(usn) from book2 group  by usn having COUNT(*)>3
 --select * from book2

------------------------------------------------------------------------------------------
--------Feedback form-----------(17)

alter procedure feedback
as
begin
	 Declare @feedback varchar(100)
	 Declare @print varchar(100)

	 set @feedback='Hello,I am here to write a feedback'
	 print @feedback
 --set @print= @feedback + Desktop:\demo.txt

  print @print
end 

   execute feedback

---------------------------------------------------------------------------------------------
 ----------------------------location(18)------------------------

 alter procedure location
	 @usn int,
	 @location varchar(20)
 as
 begin
	   if @location not in(select locations from member where locations is not null)
		  update member set locations='Germa' where usn=6
   else
       select count (locations) from member where @usn=usn
 end

 exec location 1,'Germa'


 select * from member add locations varchar(20)
 alter table member add locations varchar(20)
 
 --------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-----------------------------Deleting the account(19)------------------------------
	
alter procedure DeletingAccount
	@username varchar(20),
	@password varchar(20),
	@usn int

as
begin
		if @username in(select username from member where usn=@usn)
		  if @password in(select password from member where usn=@usn) 
				delete  member where @username=username
		  else
			print 'wrong entered'
		else
		   print 'Please check the whether entered right username'
		   end

		   select * from member
   exec DeletingAccount 'Ram','rac1',4

---------------------------------------------------------------------------------------------
---------------------------------



