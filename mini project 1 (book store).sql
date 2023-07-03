CREATE TABLE Book_Store(
Item_ID INTEGER PRIMARY KEY,
Name TEXT,
Author_Name TEXT,
Genre TEXT,
Price INTEGER);

INSERT INTO Book_Store VALUES(1,'Lord of the Rings','J.R.R Tolkein','Fantasy',1349);
INSERT INTO Book_Store VALUES(2,'A Game of Thrones','George R R Martin','Fantasy',2718);
INSERT INTO Book_Store VALUES(3,'The Complete Collection of Arsene Lupin','Maurice Leblanc','Fiction',1500);
INSERT INTO Book_Store VALUES(4,'Heroes of Olympus','Rick Riordan','Fantasy',1274);
INSERT INTO Book_Store VALUES(5,'Poirot Investigates','Agatha Christie','Fiction',274);
INSERT INTO Book_Store VALUES(6,'The Psychology of Money','Morgan Housel','Non fiction',275);
INSERT INTO Book_Store VALUES(7,'Famous Five Boxed Collection','Enid Blyton','Fiction',2489);
INSERT INTO Book_Store VALUES(8,'Harry Potter Box Set','J.K Rowling','Fantasy',2732);
INSERT INTO Book_Store VALUES(9,'Three Act Tragedy','Agatha Christie','Fiction',269);
INSERT INTO Book_Store VALUES(10,'Rich Dad Poor Dad','Robert T.Kiyosaki','Non fiction',298);
INSERT INTO Book_Store VALUES(11,'The Best of Poirot 5 books box set','Agatha Christie','Fiction',1270);
INSERT INTO Book_Store VALUES(12,'Pride and Prejudice','Jane Austen','Classics',316);
INSERT INTO Book_Store VALUES(13,'The Trials of Apollo','Rick Riordan','Fantasy',1296);
INSERT INTO Book_Store VALUES(14,"Collection of Shakespeare's Greatest Short Stories",'Shakespeare','Classics',699);
INSERT INTO Book_Store VALUES(15,'Elephants Can Remeber','Agatha Christie','Fiction',284);

SELECT * FROM Book_Store;

SELECT Genre, AVG(Price) FROM Book_Store
GROUP BY Genre