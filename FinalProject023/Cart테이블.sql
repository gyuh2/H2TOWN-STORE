use Master;
create table Cart (
	cID varchar(10) primary key,
	cName varchar(30) not null,
	cCategory varchar(20),
	cPrice int not null,
	cPoint varchar(10)
)

select * from Cart;