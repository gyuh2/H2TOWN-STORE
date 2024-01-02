use Master;
create table Artist (
	aID varchar(10) primary key,
	aName varchar(20) not null,
	aNation varchar(20),
	aGroup varchar(20),
	aDebut varchar(30)
)
insert Artist values ('0212','디오','대한민국','EXO','2012/04/08');
insert Artist values ('1030','지젤','일본','AESPA','2020/11/17');
insert Artist values ('0814','휴닝카이','미국','TXT','2019/03/04');
insert Artist values ('1214','온유','대한민국','SHINee','2008/05/25');
insert Artist values ('1013','지민','대한민국','BTS','2013/06/13');
insert Artist values ('0807','로운','대한민국','SF9','2016/10/05');
insert Artist values ('0624','닉쿤','태국','2PM','2008/09/04');
insert Artist values ('0221','이서','대한민국','IVE','2021/12/01');
insert Artist values ('0721','리아','대한민국','ITZY','2019/02/12');

select * from Artist;