  --table_book_issue

  delete book_issue
insert into book_issue2(issue_id,member,book_isbn,due_date,last_reminded) values
	(01,'five','AA1','2022-01-31','2022-01-27'),
	(02,'ten','AA2','2022-02-28','2022-02-25'),
	(03,'twelve','AA1','2022-03-31','2022-03-28'),
	(04,'fifteen','AA1','2022-04-30','2022-04-28'),
	(05,'eight','AA3','2022-05-29','2022-05-28'),
	(06,'ten','AA3','2022-03-31','2022-03-28'),
	(07,'twelve','AA3','2022-04-30','2022-04-30'),
	(08,'eight','AA3','2022-05-30','2022-05-27'),
	(09,'eight','AA4','2022-05-30','2022-05-27')
	INSERT INTO book_issue2 VALUES(10,'EIGHT','AA5','2022-06-30','2022-06-28')
	INSERT INTO book_issue2 VALUES(11,'NINE','AA5','2022-07-25','2022-07-23')
	INSERT INTO book_issue2 VALUES(12,'ONE','AA6','2022-08-28','2022-08-30')
	INSERT INTO book_issue2 VALUES(13,'FOUR','AA6','2022-08-12','2022-08-10')
	INSERT INTO book_issue2 VALUES(14,'SIX','AA6','2022-08-18','2022-08-20')
	INSERT INTO book_issue2 VALUES(15,'EIGHT','AA6','2022-08-20','2022-08-21')
	INSERT INTO book_issue2 VALUES(16,'NINE','AA7','2022-08-22','2022-08-25')
	INSERT INTO book_issue2 VALUES(17,'SEVEN','AA7','2022-08-25','2022-08-28')
	INSERT INTO book_issue2 VALUES(18,'TWELVE','AA8','2022-08-27','2022-08-29')
	INSERT INTO book_issue2 VALUES(19,'FIFTEEN','AA9','2022-09-28','2022-09-29')
	INSERT INTO book_issue2 VALUES(20,'EIGHTEEN','AA9','2022-10-29','2022-10-30')
	INSERT INTO book_issue2 VALUES(21,'TWELVE','AA10','2022-11-28','2022-11-30')
	INSERT INTO book_issue2 VALUES(22,'ELEVEN','AA10','2022-07-28','2022-07-30')
	INSERT INTO book_issue2 VALUES(23,'THIRTEEN','AA11','2022-06-28','2022-06-30')
	INSERT INTO book_issue2 VALUES(24,'SEVEN','AA12','2022-05-28','2022-05-30')
	INSERT INTO book_issue2 VALUES(25,'ELEVEN','AA12','2022-04-28','2022-04-30')
	INSERT INTO book_issue2 VALUES(26,'TWELVE','AA13','2022-11-28','2022-11-30')
	INSERT INTO book_issue2 VALUES(27,'THIRTEEN','AA13','2022-12-28','2022-12-30')
	INSERT INTO book_issue2 VALUES(28,'SEVENTEEN','AA13','2022-09-28','2022-09-30')
	INSERT INTO book_issue2 VALUES(29,'TWENTY','AA14','2022-08-28','2022-08-30')
	INSERT INTO book_issue2 VALUES(30,'TWENTYONE','AA14','2022-09-28','2022-09-30')
	INSERT INTO book_issue2 VALUES(31,'EIGHTEEN','AA15','2022-11-28','2022-11-30')
	INSERT INTO book_issue2 VALUES(32,'TEN','AA15','2022-09-20','2022-09-30')
	INSERT INTO book_issue2 VALUES(33,'SIXTEEN','AA16','2022-07-21','2022-07-19')
	INSERT INTO book_issue2 VALUES(34,'EIGHT','AA16','2022-05-22','2022-05-20')
	INSERT INTO book_issue2 VALUES(35,'SEVEN','AA17','2022-04-23','2022-08-21')
	INSERT INTO book_issue2 VALUES(36,'FOUR','AA17','2022-08-24','2022-08-22')
	INSERT INTO book_issue2 VALUES(37,'TWELVE','AA18','2022-08-25','2022-08-23')
	INSERT INTO book_issue2 VALUES(38,'EIGHTEEN','AA18','2022-08-26','2022-08-24')
	INSERT INTO book_issue2 VALUES(39,'FOUR','AA19','2022-08-28','2022-08-30')
	INSERT INTO book_issue2 VALUES(40,'TEn','AA19','2022-08-28','2022-08-30')

  select * from book_issue2
  select * from book3

  update book_issue set book_isbn='091123' where issue_id=044
  update book_issue set book_isbn='091124' where issue_id=066
  update book_issue set book_isbn=''

--table_member
insert into member1(id,username,password,name,email,balance) values
	(01,'Rose11','@123Abc','rose','rose@gmail.com',200),
	(02,'abby11','rose@','Abby','abby@gmail.com',100),
	(03,'robin12','robin@','Robin','robin@gmail.com',200),
	(04,'Ram13','ram@','Ram','ram@gmail.com',100),
	(05,'godzilla','ram@3','Ram','godzilla@gmail.com',100),
	(06,'Rovv','@123Abc','rose','rose@gmail.com',200),
	(07,'ab1','ab1@','ab1','ayy@gmail.com',100),
	(08,'robn12','robn@','Robn','robn@gmail.com',200),
	(09,'Ram','ram7@','Ram12','ram3@gmail.com',0),
	(10,'godzilla','ram@3','Ram','godzilla@gmail.com',0),
	(11,'hrtgg','hrt@13','hrt','hrt@gmail.com',56),
	(12,'abc11','abc@13','abc','abc@gmail.com',100),
	(13,'xxx10','xxx@13','xxx','xxx@gmail.com',50),
	(14,'yyy11','yyy@13','yyy','yyy@gmail.com',20),
	(15,'zzz23','zzz@13','zzz','zzz@gmail.com',30),
	(16,'ggg34','ggg@13','ggg','ggg@gmail.com',40),
	(17,'jkhy','jkhy@13','jkhy','jkhy@gmail.com',50),
	(18,'kljh','kljh@13','kljh','kljh@gmail.com',30)

     select * from member

--return_book
insert into return_book(return_id,expiry_date,due_date,book_isbn) values
	(01,'2022-01-27','2022-01-31','AA1'),
	(02,'2022-02-28','2022-02-25','AA2'),
	(03,'2022-03-31','2022-03-28','AA3'),
	(04,'2022-04-30','2022-04-30','AA4'),
	(05,'2022-05-30','2022-05-27','AA5'),
	(06,'2022-06-30','2022-06-27','AA6'),
	(07,'2022-07-31','2022-07-26','AA7'),
	(08,'2022-08-24','2022-08-20','AA8'),
	(09,'2022-09-25','2022-09-27','AA9')
	insert into return_book values(10,'2022-10-27','2022-10-29','AA10')
	insert into return_book values(11,'2022-12-25','2022-12-28','AA11')
	insert into return_book values(12,'2022-01-29','2022-01-30','AA12')
	insert into return_book values(13,'2022-02-22','2022-02-25','AA13')
	insert into return_book values(14,'2022-05-29','2022-05-30','AA14')
	insert into return_book values(15,'2022-07-29','2022-07-30','AA15')
	insert into return_book values(16,'2022-11-29','2022-09-30','AA16')
	insert into return_book values(17,'2022-11-29','2022-09-30','AA17')
        select * from return_book
		delete return_book


--alter table member add usn int 
--	update member set usn=01 where id=01
--	update member set usn=02 where id=02
--	update member set usn=03 where id=03
--	update member set usn=04 where id=04
--	update member set usn=05 where id=05

--alter table book2 add usn int
--	update book2 set usn=01 where copies=37
--	update book2 set usn=02 where copies=78
--	update book2 set usn=03 where copies=22
--	update book2 set usn=01 where copies=93
--	update book2 set usn=02 where copies=119
--	update book2 set usn=03 where copies=120