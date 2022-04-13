--CREATE DATABASE Socialnetwork
--USE Socialnetwork
--
--CREATE TABLE Posts
--(
--  Id int identity(1,1) PRIMARY KEY,
--  Content nvarchar(250),
--  Sharetime date DEFAULT getdate(),
--  UserId int references Users(Id),
--  LikeCount int,
--  IsDeleted bit
--)
--CREATE TABLE Users
--(
--  Id int identity(1,1) PRIMARY KEY,
--  [Login] nvarchar(250),
--  [Password] nvarchar(250),
--  Mail nvarchar(250),
--  PeopleId int references People(Id) 
--)
--CREATE TABLE Comments
--(
--  Id int identity(1,1) PRIMARY KEY,
--  UserId int references Users(Id),
--  PostId int references Posts(Id),
--  PeopleId int references People(Id),
--  LikeCount int,
--  IsDeleted bit 
--)

--CREATE TABLE People
--(
--  Id int identity(1,1) PRIMARY KEY,
--  [Name] nvarchar(250),
--  Surname nvarchar(250),
--  Age int
--)

--INSERT INTO People(Name,Surname,Age)
--VALUES (N'Məhəmməd',N'Mustafayev',20),
--       (N'Anar',N'Qandayev',20),
--	   (N'Afər',N'Sadıqlı',24),
--	   (N'Orxan',N'Əzizov',34),
--	   (N'İlkin',N'Nəzirov',55)

--INSERT INTO Users(PeopleId,Login,Mail,Password)
--VALUES (1,N'loginsite',N'm.aa@gmail.com',N'm1234uzdf'),
--       (2,N'loginsite',N'n.r,asc@gmail.com',N'Au78idf'),
--	   (3,N'loginsite',N'a.f,dsc@gmail.com',N'Aftyu7854'),
--	   (4,N'loginsite',N'Oxn6721c@gmail.com',N'Osd12345jkl'),
--	   (5,N'loginsite',N'kn.iiUl@gmail.com',N'gEjornU')

--INSERT INTO Posts(UserId,Content,LikeCount,IsDeleted)
--VALUES (1,'I dont care',1200,1),
--       (4,'This is my new car',120,1),
--	   (2,'I have job',134,0),
--	   (5,'I  know',1200,1),
--	   (3,'I dont know',12,0)

--INSERT INTO Comments(UserId,PostId,LikeCount,IsDeleted)
--VALUES (1,4,120,1),
--       (2,3,12,0),
--	   (4,2,134,0),
--	   (5,1,1200,1),
--	   (3,5,1200,1)
--SELECT * FROM People 
--SELECT * FROM Users 
--SELECT * FROM Posts 
--SELECT * FROM Comments 
----1--
--SELECT  COUNT(Comments.Id) FROM Comments


--2--
--CREATE VIEW AllData
--AS
--SELECT * FROM Comments as c
--JOIN Users as u
--ON c.UserId=u.Id
--JOIN People as p
--ON c.PeopleId=p.Id
--JOIN Posts as ps
--ON c.PostId=ps.Id


--3--
--ALTER TRIGGER GetDeletedPostsDAta
--ON Posts
--INSTEAD OF DELETE
--AS
--   DECLARE @Id int
--   SELECT @Id= Id FROM deleted
--   UPDATE Posts SET IsDeleted =1 WHERE Id=@Id

--DELETE Posts WHERE Id=2

--ALTER TRIGGER GetDeletedCommentsDAta
--ON Comments
--INSTEAD OF DELETE
--AS
--   DECLARE @Id int
--   SELECT @Id= Id FROM deleted
--   UPDATE Comments SET IsDeleted =1 WHERE Id=@Id

--DELETE Comments WHERE Id=1