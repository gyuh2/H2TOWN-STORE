use Master;
create table Goods (
	gID varchar(10) primary key,
	gName varchar(30) not null,
	gCategory varchar(20),
	gPrice int not null,
	gPoint varchar(10)
)
insert Goods values ('001','응원봉','콘서트',38000,'190P')
insert Goods values ('002','DVD','음악',52100,'260P')
insert Goods values ('003','CD','음악',19300,'96P')
insert Goods values ('004','포토북','사진',28000,'140P')
insert Goods values ('005','앨범','음악',13600,'68P')
insert Goods values ('006','바인더','문구',6500,'32P')
insert Goods values ('007','EXO티셔츠','의류',45000,'225P')
insert Goods values ('H01','친필사인앨범','한정판',18000,'90P');
insert Goods values ('008','폴라로이드','사진',25000,'110P');
insert Goods values ('H02','애장품','한정판',45000,'225P');
insert Goods values ('009','시즌그리팅','문구',42000,'210P');

select * from Goods;