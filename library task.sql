 CREATE DATABASE LIBRARYMANAGEMENT
USE LIBRARYMANAGEMENT
---PROCEDURE TABLE_PUBLISHER
CREATE PROCEDURE LIBRARYMANAGEMENTSYSTEMPROCEDURE
AS
BEGIN
  CREATE TABLE table_publisher (
	PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	PublisherAddress VARCHAR(100) NOT NULL,
	PublisherPhone VARCHAR(20) NOT NULL)
END

--BOOK TABLE
CREATE TABLE TABLE_BOOK(
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Book_Title VARCHAR(100) NOT NULL,
	PublisherName VARCHAR(100) NOT NULL
);

CREATE INDEX SAMPLEE ON TABLE_BOOK(BOOKID DESC)
SP_HELPINDEX SAMPLEE
SELECT TOP 1 BOOK_TITLE,BookID FROM TABLE_BOOK ORDER BY BookID DESC
select * from TABLE_BOOK

--TABLE_LIBRARY BRANCH
CREATE TABLE TABLE_LIBRARY_BRANCH(
	LIBRARY_BRANCH_BRANCHID INT PRIMARY KEY NOT NULL IDENTITY ,
	library_branch_BranchName VARCHAR(100) NOT NULL,
	library_branch_BranchAddress VARCHAR(200) NOT NULL
);

--VIEW THE BRANCH TABLE
--SELECT FROM TABLE_LIBRARY_BRANCH
CREATE TABLE TABLE_BORROWER(
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	BorrowerName VARCHAR(100) NOT NULL,
	BorrowerAddress VARCHAR(200) NOT NULL,
	BorrowerPhone VARCHAR(50) NOT NULL
);

Create table Student1(
	CardNo Int not null,
	usn varchar(20),
	foreign key(CardNo)references table_borrower(CardNo))

--STORE BOOK COPIES
CREATE TABLE table_book_copies (
	book_copies_CopiesID INT PRIMARY KEY NOT NULL, 
	book_copies_BookID INT NOT NULL, 
	book_copies_BranchID INT NOT NULL, 
	book_copies_No_Of_Copies INT NOT NULL
);

--STORE BOOK AUTHORES

CREATE TABLE TABLE_BOOK_AUTHORS(
	BOOK_AUTHORS_AUTHORID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	book_authors_BookID INT NOT NULL,
	BOOK_AUTHORS_AUTHORNAME NVARCHAR(50) NOT NULL,
	CONSTRAINT FK_BOOK_ID3 FOREIGN KEY (book_authors_BookID) REFERENCES TABLE_BOOK(BOOKID) ON UPDATE CASCADE ON DELETE CASCADE)

--book2 
CREATE TABLE book3(
	 isbn char(13) PRIMARY KEY,
	 title varchar(80) NOT NULL,
	 author varchar(80) NOT NULL,
	 category varchar(80) NOT NULL,
	 price BIGINT NOT NULL CHECK (price >0),
	 copies int NOT NULL CHECK(copies>0),usn varchar(10)
	 );
alter table book3 add publishDATE DATE

UPDATE book3 SET publishDATE='1995-01-01' where  isbn='AA1'
UPDATE book3 SET publishDATE='1996-02-01' where  isbn='AA2'
UPDATE book3 SET publishDATE='1997-03-01' where  isbn='AA3'
UPDATE book3 SET publishDATE='1998-04-01' where  isbn='AA4'
UPDATE book3 SET publishDATE='1999-05-01' where  isbn='AA5'
UPDATE book3 SET publishDATE='2000-06-01' where  isbn='AA6'
UPDATE book3 SET publishDATE='2001-07-01' where  isbn='AA7'
UPDATE book3 SET publishDATE='2002-08-01' where  isbn='AA8'
UPDATE book3 SET publishDATE='2003-09-01' where  isbn='AA9'
UPDATE book3 SET publishDATE='2004-10-01' where  isbn='AA10'
UPDATE book3 SET publishDATE='2005-11-01' where  isbn='AA11'
UPDATE book3 SET publishDATE='2006-12-01' where  isbn='AA12'
UPDATE book3 SET publishDATE='2007-01-24' where  isbn='AA13'
UPDATE book3 SET publishDATE='2008-02-02' where  isbn='AA14'
UPDATE book3 SET publishDATE='2009-01-02' where  isbn='AA15'
UPDATE book3 SET publishDATE='2020-01-02' where  isbn='AA16'
UPDATE book3 SET publishDATE='2019-01-02' where  isbn='AA17'
UPDATE book3 SET publishDATE='2018-01-02' where  isbn='AA18'
UPDATE book3 SET publishDATE='2017-01-02' where  isbn='AA19'
UPDATE book3 SET publishDATE='2016-01-02' where  isbn='AA20'
UPDATE book3 SET publishDATE='2015-01-02' where  isbn='AA21'
UPDATE book3 SET publishDATE='2014-01-02' where  isbn='AA22'
UPDATE book3 SET publishDATE='2013-01-02' where  isbn='AA23'
UPDATE book3 SET publishDATE='2012-01-02' where  isbn='AA24'
UPDATE book3 SET publishDATE='2011-01-02' where  isbn='AA25'
UPDATE book3 SET publishDATE='2010-01-02' where  isbn='AA26'
UPDATE book3 SET publishDATE='1995-01-02' where  isbn='AA27'
UPDATE book3 SET publishDATE='1996-01-02' where  isbn='AA28'
UPDATE book3 SET publishDATE='1997-01-02' where  isbn='AA29'
UPDATE book3 SET publishDATE='1998-01-02' where  isbn='AA30'
UPDATE book3 SET publishDATE='1999-01-02' where  isbn='AA31'
UPDATE book3 SET publishDATE='2000-01-02' where  isbn='AA32'
UPDATE book3 SET publishDATE='2001-01-02' where  isbn='AA33'
UPDATE book3 SET publishDATE='2002-01-02' where  isbn='AA34'
UPDATE book3 SET publishDATE='2003-01-02' where  isbn='AA35'
UPDATE book3 SET publishDATE='2004-01-02' where  isbn='AA36'
UPDATE book3 SET publishDATE='2005-01-02' where  isbn='AA37'
UPDATE book3 SET publishDATE='2006-01-02' where  isbn='AA38'
UPDATE book3 SET publishDATE='2007-01-02' where  isbn='AA39'
UPDATE book3 SET publishDATE='2008-01-02' where  isbn='AA40'
UPDATE book3 SET publishDATE='2009-01-02' where  isbn='AA41'
UPDATE book3 SET publishDATE='2010-01-02' where  isbn='AA42'
UPDATE book3 SET publishDATE='2011-01-02' where  isbn='AA43'
select * from book3



 
 --Book_issue
create table book_issue2( 
	issue_id int NOT NULL,
	member varchar(20) NOT NULL,
	book_isbn char(13) NOT NULL,
	due_date date NOT NULL,
	last_reminded date DEFAULT NULL
	foreign key(book_isbn) references  book3(isbn)
);


--pending book request

create table pending_book_requestss(
	request_id int not null,
	member varchar(20) not null, 
	book_isbn varchar(13) not null,
	timing DATETIMEOFFSET NOT NULL DEFAULT SYSDATETIMEOFFSET() 
);


--pending registration

create table pending_registrations(
	username varchar(20) not null,
	password char(20) not null,
	name varchar(40) not null,
	email nvarchar(20) not null,
	balance int,
	mytime DATETIMEOFFSET NOT NULL DEFAULT SYSDATETIMEOFFSET()
	)

--librain
CREATE TABLE librarian (
	id int NOT NULL,
	username varchar(20) NOT NULL,
	password char(40) NOT NULL
 );

--member
create table member(
	id int NOT NULL,
	username varchar(20) NOT NULL,
	password char(40) NOT NULL,
	name varchar(80) NOT NULL,
	email varchar(80) NOT NULL,
	balance int NOT NULL,
	USN VARCHAR(10)
)

		update member set usn=1 where id=6
		update member set usn=3 where id=7
		update member set usn=3 where id=8
		update member set usn=4 where id=9
		update member set usn=4 where id=10
		update member set usn=6 where id=11
		update member set usn=6 where id=12
		update member set usn=7 where id=13
		update member set usn=7 where id=14
		update member set usn=2 where id=15
		update member set usn=2 where id=16
		update member set usn=1 where id=17
		update member set usn=1 where username='Rose11' and balance=200
		update member set usn=5 where username='abby11' and balance=100
		update member set usn=5 where username='robin12' and balance=200
		update member set usn=5 where username='Ram13' and balance=100
		update member set usn=5 where username='godzilla' and balance=100



--return book
create table return_book(
	return_id int,
	expiry_date date,
	due_date date not null,
	book_isbn varchar(13)
)




----returning book
--create trigger return_book on book_issue instead of DELETE
--as
--begin
--update member set balance =balance + (select price from book where isbn=deleted.book_isbn)
--where username=deleted.member;
--update book set copies=copies+1 where isbn=deleted.book_isbn;
--end;

----issue book
--create trigger issue_book on book_issue instead of delete
--as
--begin
--set due_date=DateAdd(getdate(),20)
--update  member set balance=balance+(select price from book2 where isbn=new.bookisbn)where username=inserted.member;
--UPDATE book2 SET copies = copies - 1 WHERE isbn = inserted.book_isbn;
--    DELETE FROM pending_book_requests WHERE member = inserted.member AND book_isbn = inserted.book_isbn;

--	--add members
--create trigger add_member on member
--after insert 
--as
--begin
--delete from pending_registrations where username=inserted.username;
--end

----remove_member
--create trigger remove_member on member
--after insert 
--as
--begin
--delete from pending_book_requestss where member=deleted.username;
--end
