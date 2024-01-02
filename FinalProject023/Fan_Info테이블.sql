use Master;
create Table Fan_Info (
	fName varchar(30) not null,
	fId varchar(30) primary key,
	fPassword varchar(20),
	fBirth_Y varchar(10),
	fEmail varchar(30),
	fPhone varchar(20),
)

insert into Fan_Info Values ('김도영','donct','0201','1996','do0Kim@naver.com','010-1996-0201');
insert into Fan_Info Values ('나재민','Nanacon','0813','1990','jmNana@naver.com','010-1990-0813');
insert into Fan_Info Values ('문태일','moonair','0614','2001','moonT1@naver.com','010-2001-0614');
insert into Fan_Info Values ('서영호','johnnysuh','0209','1994','yhSuh@kako.com','010-1995-0209');
insert into Fan_Info Values ('이동혁','fullsun','0606','1999','haechan@naver.com','010-2000-0606');
insert into Fan_Info Values ('이민형','onyourmark','0802','1999','mhLee@daum.net','010-1999-0802');
insert into Fan_Info Values ('이태용','taeoxo','0701','1995','TYtrack@naver.com','010-1995-0701');
insert into Fan_Info Values ('정윤오','yknow','0214','1997','jyHyun@gmail.com','010-1997-0214');
insert into Fan_Info Values ('관리자','admin','1111','2000','Admin@hitown.net','02-399-0825');

Select * from Fan_Info;