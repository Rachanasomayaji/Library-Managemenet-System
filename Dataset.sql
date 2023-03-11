--book2

--use LIBRARYMANAGEMENT

--pending registration
INSERT INTO pending_registrations (username, password, name, email, balance, mytime)VALUES
	('Robin200', '7t6hg$56y^', 'Robin', 'robin@gmail.com', 200,'2021-03-21 08:59:00'),
	('ron100', '7t^67854$','Rob', 'ron@gamil.com', 200,'2021-04-22 09:15:00'),
	('abc28','65432@','ABC','raj@gamil.com',300,'2022-05-22 10:04:00'),
	('Raja30', 'raj678$3@','Raj','Raj300@gmail.com', 250,'2022-05-22 01:59:00'),
	('Aarya100', 'jshfluijg', 'Aarya', 'aarya200@gmail.com', 2000,'2022-01-21 08:59:00'),
	('Aadhya100', 'Ujgf76G5$#f@df', 'Aadhya', 'aadhya100@gmail.com', 1500,'2022-03-21 08:59:00'),
	('rose200', 'ghjyrt@#1', 'Rose', 'Rose@gmail.com', 1500,'2022-03-21 08:59:00');
    select * from pending_registrations
--librarian
INSERT INTO librarian (id, username, password) VALUES
		(1,'Vani', 'xthds97@3h$yfc*jrkg$'),
		(2,'rani','rrrr@3451'),
		(3,'vihan','876abc@34'),
		(4,'dan','7^ght&'),
		(5,'scott','george')
   select * from librarian

--table_publisher
insert into table_publisher(PublisherName,PublisherAddress,PublisherPhone) values
	('xyz','denmark',990876543),
	('bbb','Landon',8147759087),
	('ccc','paris',98765432),
	('eee','europe',8765432980),
	('fff','korea',98705643),
	('ggg','england',98765439),
	('aaa','denmark',990876543),
	('xxx','India',8147759087),
	('yyy','korea',98765432),
	('ddd','europe',8765432980),
	('hhh','california',98705643),
	('iii','USA',98765439),
	('hjh','Ido',2334454444),
	('jjj','german',98765432567)

      select * from table_publisher

--table_book
insert into table_book(Book_Title,PublisherName) values
	('The dairy','anna'),
	('annamary','alia'),
	('disney','reisley'),
	('the atomicCity','xzz'),
	('theLand','xyz'),
	('Therobotics','zzz')

select * from table_book

--TABLE_LIBRARY_BRANCH
insert into TABLE_LIBRARY_BRANCH(library_branch_BranchName,library_branch_BranchAddress) values
	('history','a1'),
	('technology','a2'),
	('science','a3') ,
	('management','a4'),
	('finance','a5'),
	('robotics','a6'),
	('social','a7'),
	('English','a8'),
	('kannada','a9'),
	('hindi','a10'),
	('Drama','a11'),
	('music','a12'),
	('fantasy','a13'),
	('karate','a14'),
	('swimming','a15'),
	('geography','a16'),
	('environment','a17'),
	('tech','a18'),
	('ML','a19'),
	('DL','a20'),
	('civil','a21'),
	('AI','a22'),
	('sql','a23'),
	('power Bi','a24'),
	('testing','a25'),
	('MMBS','a26'),
	('bio','a27'),
	('science','a28'),
	('LLB','a29'),
	('phschology','a30')
select * from TABLE_LIBRARY_BRANCH
--TABLE_BORROWER
insert into TABLE_BORROWER(BorrowerName,BorrowerAddress,BorrowerPhone) values
	('Donld','america','99876540'),
	('res','Rajastan','765432987'),
	('ra','landon','89076543'),
	('dnny','denmark','7654381111'),
	('remka','delhi','876543219'),

	('Raj','India','99455666666'),
	('ray','kerala','7689432987'),
	('Ram','UP','8989076543'),
	('Ravi','MP','3454381111'),
	('Lakshman','Karnataka','7890675219'),
	('Rev','Tamilnadu','980756453'),
	('Tomm','german','67585957'),

	('Rj','India','99455666666'),
	('ry','kerla','7689432987'),
	('Ram','Uttarpradesh','8989076543'),
	('Rai','MadyaP','3454381111'),
	('Lakhman','Karnataka','7890675219'),
	('Rv','TamilNadu','980756453'),
	('Tom','germany','67585957'),

	('Rayan','India','99455666666'),
	('vvv','kerla','7689432987'),
	('skr','Uttarpradesh','8989076543'),
	('kmm','MadyaP','3454381111'),
	('Lakshmi','Karnataka','7890675219'),
	('Ram','TamilNadu','980756453'),
	('jerry','germany','67585957')

	select * from TABLE_BORROWER

	insert into Student1(CardNo ,usn) values(100,'B6304111')
	insert into Student1(CardNo ,usn) values(100,'B6304112')
	insert into Student1(CardNo ,usn) values(100,'B6304113')
	insert into Student1(CardNo ,usn) values(101,'B6304114')
	insert into Student1(CardNo ,usn) values(101,'B6304115')
	insert into Student1(CardNo ,usn) values(103,'B6304116')
	insert into Student1(CardNo ,usn) values(103,'B6304117')
	insert into Student1(CardNo ,usn) values(103,'B6304118')
	insert into Student1(CardNo ,usn) values(103,'B6304119')
	insert into Student1(CardNo ,usn) values(104,'B6304110')
	insert into Student1(CardNo ,usn) values(104,'B6304111')
	insert into Student1(CardNo ,usn) values(105,'B6304112')
	insert into Student1(CardNo ,usn) values(104,'B6304113')
	insert into Student1(CardNo ,usn) values(104,'B6304114')
	insert into Student1(CardNo ,usn) values(106,'B6304115')
	insert into Student1(CardNo ,usn) values(107,'B6304116')
	insert into Student1(CardNo ,usn) values(108,'B6304117')
	insert into Student1(CardNo ,usn) values(109,'B6304118')
	insert into Student1(CardNo ,usn) values(110,'B6304119')
	insert into Student1(CardNo ,usn) values(111,'B6304120')
	insert into Student1(CardNo ,usn) values(112,'B6304121')
	insert into Student1(CardNo ,usn) values(113,'B6304122')
	insert into Student1(CardNo ,usn) values(114,'B6304123')
	insert into Student1(CardNo ,usn) values(115,'B6304124')
	insert into Student1(CardNo ,usn) values(116,'B6304125')
	insert into Student1(CardNo ,usn) values(117,'B6304126')
	insert into Student1(CardNo ,usn) values(118,'B6304127')
	insert into Student1(CardNo ,usn) values(119,'B6304128')
	insert into Student1(CardNo ,usn) values(120,'B6304129')
	insert into Student1(CardNo ,usn) values(121,'B6304130')
	insert into Student1(CardNo ,usn) values(122,'B6304131')
	insert into Student1(CardNo ,usn) values(123,'B6304132')
	insert into Student1(CardNo ,usn) values(124,'B6304133')
	insert into Student1(CardNo ,usn) values(125,'B6304134')
	insert into Student1(CardNo ,usn) values(126,'B6304135')
 


--table_book_copies
insert into table_book_copies(book_copies_CopiesID,book_copies_BookID,book_copies_BranchID,book_copies_No_Of_Copies) values
	(32,6,5,18),
	(31,2,4,15),
	(1,1,1,10),
	(2,1,1,15),
	(3,1,1,15),
	(4,2,1,15),
	(5,2,3,15),
	(6,4,3,16),
	(7,2,5,16),
	(8,2,3,16),
	(9,3,3,17),
	(10,4,3,18),
	(11,5,4,19),
	(12,6,5,20),
	(13,7,9,21),
	(14,5,10,21),
	(15,3,6,20),
	(16,4,8,21),
	(17,7,9,21),
	(18,6,4,21),
	(19,5,9,21),
	(20,6,8,21),
	(21,5,3,20),
	(22,4,5,20),
	(23,5,7,20),
	(24,7,8,20),
	(25,8,2,22),
	(26,9,3,23),
	(27,6,5,21),
	(28,3,5,22),
	(29,5,5,23),
	(30,8,8,24)
select * from table_book_copies

--TABLE_BOOK_AUTHORS

insert into TABLE_BOOK_AUTHORS(book_authors_BookID,BOOK_AUTHORS_AUTHORNAME) values
	(1,'lissa'),
	(2,'ranjan'),
	(3,'cann'),
	(4,'deis'),
	(5,'denny'),
	(6,'viki'),
	(7,'lissy'),
	(6,'rajan'),
	(3,'canny'),
	(1,'deison'),
	(5,'den'),
	(4,'vinn'),
	(2,'Kim'),
	(3,'Kotney'),
	(4,'cant'),
	(5,'kavi'),
	(7,'clovia'),
	(6,'katherina'),
	(4,'rimm'),
	(2,'roldy'),
	(2,'colli'),
	(3,'kris'),
	(6,'vani'),
	(5,'vibhav')
select * from table_book_authors
--book2
 INSERT INTO book3 (isbn, title, author, category, price, copies,usn) VALUES
	('AA1', 'X-Men: God Loves, Man Kills', 'Chris', 'Comics', 98, 39,1),
	('AA2', 'Mike Tyson : Undisputed Truth', 'Larry Sloman, Mike Tyson', 'Sports', 654, 79,2),
	('AA3', 'V for Vendetta', 'Alan Moore', 'Comics', 600, 23,2),
	('AA4', 'When Breath Becomes Air', 'Paul Kalanithi', 'Medical', 500, 94,2),
	('AA5', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 432, 120,3),
	('AA6', 'The god father', 'F. Scott ', 'Fiction',433, 121,2)
	insert into book3 values('AA7', 'Atomic city', 'Chris', 'motivational', 150, 39,1)
	insert into book3 values('AA8', 'The god father', 'F. Scott ', 'Fiction', 433, 22,2)
	insert into book3 values('AA9','Undisputed Truth', 'Mike Tyson', 'life', 654, 79,2)
	insert into book3 values('AA10', ' Vendetta', 'Alan Moore', 'Spir', 600, 23,1)
	insert into book3 values('AA11', 'When We feel Air', 'Paul Kalanithi', 'Medical', 500, 94,3)
	insert into book3 values('AA12', 'The Great legend', 'F. Scott Fitzgerald', 'Fiction', 432, 120,2)
	insert into book3 values('AA13', 'The god father', 'F. Scott ', 'Fiction', 433, 121,1)
	insert into book3 values('AA14', 'The god father', 'F. Scott ', 'Fiction', 433, 121,1)
	insert into book3 values('AA15', 'The man', 'F. Scott ', 'Fict', 433, 121,2)
	insert into book3 values('AA16', 'The world', 'F. Scott ', 'Fiction', 436, 121,1)
	insert into book3 values('AA17', 'The It industry', 'F. Scott ', 'Fiction', 438, 121,5)
	insert into book3 values('AA18', 'The technology', 'F. Scott ', 'Knoweldege', 436, 121,3)
	insert into book3 values('AA19', 'The wander women', 'Rein ', 'disney', 432, 121,6)
	insert into book3 values('AA20', 'The end', 'F. Scott ', 'Fiction', 434, 121,2)
	insert into book3 values('AA21', 'The history', 'F. Scott ', 'Fiction', 432, 121,5)
	insert into book3 values('AA22', 'Indian constitution', 'F. Scott ', 'comic', 431, 121,2)
	insert into book3 values('AA23', 'The death', 'F. Scott ', 'fantasy', 439, 121,1)
	insert into book3 values('AA24', 'The Dramatis world', 'F. Scott ', 'Sci-fi', 432, 121,1)
	insert into book3 values('AA25', 'The dairy of young gal', 'F. Scott ', 'dairy', 431, 121,2)
	insert into book3 values('AA26', 'Personality', 'F. Scott ', 'Fic', 438, 121,1)
	insert into book3 values('AA27', 'The god father', 'F. Scott ', 'Fict', 413, 121,1)
	insert into book3 values('AA28', 'Atomic city', 'Chris', 'motivational', 150, 39,1)
	insert into book3 values('AA29', 'The god father', 'F. Scott ', 'Fiction', 433, 22,2)
	insert into book3 values('AA30','Undisputed Truth', 'Mike Tyson', 'life', 654, 79,2)
	insert into book3 values('AA31', ' Vendetta', 'Alan Moore', 'Spir', 600, 23,1)
	insert into book3 values('AA32', 'When We feel Air', 'Paul Kalanithi', 'Medical', 500, 94,3)
	insert into book3 values('AA33', 'The Great legend', 'F. Scott Fitzgerald', 'Fiction', 432, 120,2)
	insert into book3 values('AA34', 'The god father', 'F. Scott ', 'Fiction', 433, 121,1)
	insert into book3 values('AA35', 'The god father', 'F. Scott ', 'Fiction', 433, 121,1)
	insert into book3 values('AA36', 'The man', 'F. Scott ', 'Fict', 433, 121,2)
	insert into book3 values('AA37', 'The world', 'F. Scott ', 'Fiction', 436, 121,1)
	insert into book3 values('AA38', 'The It industry', 'F. Scott ', 'Fiction', 438, 121,5)
	insert into book3 values('AA39', 'The technology', 'F. Scott ', 'Knoweldege', 436, 121,3)
	insert into book3 values('AA40', 'The wander women', 'Rein ', 'disney', 432, 121,6)
	insert into book3 values('AA41', 'The end', 'F. Scott ', 'Fiction', 434, 121,2)
	insert into book3 values('AA42', 'The history', 'F. Scott ', 'Fiction', 432, 121,5)
	insert into book3 values('AA43', 'Indian constitution', 'F. Scott ', 'comic', 431, 121,2)
	insert into book3 values('AA44', 'The death', 'F. Scott ', 'fantasy', 439, 121,1)
	insert into book3 values('AA45', 'The Dramatis world', 'F. Scott ', 'Sci-fi', 432, 121,1)
	insert into book3 values('AA46', 'The dairy of young gal', 'F. Scott ', 'dairy', 431, 121,2)
	insert into book3 values('AA47', 'Personality', 'F. Scott ', 'Fic', 438, 121,1)
	insert into book3 values('AA48', 'The god father', 'F. Scott ', 'Fict', 413, 121,1)
	insert into book3 values('AA49', 'Atomic city', 'Chris', 'motivationa', 150, 39,1)
	insert into book3 values('AA50', 'The godfather', 'F. Scott ', 'Fictn', 433, 22,2)
	insert into book3 values('AA51','UndisputedTruth', 'Mike Tyson', 'life lesson', 654, 79,2)
	insert into book3 values('AA52', ' Vendetta', 'Alan Moore', 'Spirutial', 600, 23,1)
	insert into book3 values('AA53', 'When We feelAir', 'Paul Kalanithi', 'Medication', 500, 94,3)
	insert into book3 values('AA54', 'The Great_legend', 'F. Scott Fitzgerald', 'Fict', 432, 120,2)
	insert into book3 values('AA55', 'The god father', 'F. Scott ', 'Ficti', 433, 121,1)
	insert into book3 values('AA56', 'The godfather', 'F. Scott ', 'Fictn', 433, 121,1)
	insert into book3 values('AA57', 'The man', 'F. Scott ', 'Fict', 433, 121,2)
	insert into book3 values('AA58', 'The world', 'F. Scott ', 'Fiction', 436, 121,1)
	insert into book3 values('AA59', 'The ItIndustry', 'F. Scott ', 'Fiction', 438, 121,5)
	insert into book3 values('AA60', 'The Technology', 'F. Scott ', 'Knowedege', 436, 121,3)
	insert into book3 values('AA61', 'The wander_women', 'Rein ', 'disey', 432, 121,6)
	insert into book3 values('AA62', 'The_end', 'F. Scott ', 'Fiction', 434, 121,2)
	insert into book3 values('AA63', 'The_history', 'F. Scott ', 'Fiction', 432, 121,5)
	insert into book3 values('AA64', 'Indian_constitution', 'F. Scott ', 'comic', 431, 121,2)
	insert into book3 values('AA65', 'The_death', 'F. Scott ', 'fantasy', 439, 121,1)
	insert into book3 values('AA66', 'The_Dramatis world', 'F. Scott ', 'Sci-fi', 432, 121,1)
	insert into book3 values('AA67', 'The_dairy of young gal', 'F. Scott ', 'dairy', 431, 121,2)
	insert into book3 values('AA68', 'Personality', 'F. Scott ', 'Fic', 438, 121,1)
	insert into book3 values('AA69', 'The_god father', 'F. Scott ', 'Fict', 413, 121,1)
select * from book3

DELETE book3




