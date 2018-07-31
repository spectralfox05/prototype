select * from USERS;
select * from board;
select * from boardcmt;

select * from tab;

delete from users where useremail ='d';

commit;

--table 
create table users(
	unum number  not null,
	name varchar2(20) not null,
	userEmail varchar2(30) primary key,
	userPassword varchar2(65) not null,
	registerDate date
);
drop table users purge;

CREATE SEQUENCE seq_no_users START
WITH 1 INCREMENT BY 1

DROP SEQUENCE seq_no_users;

select * from user_sequences
 
create table board (
	bnum number primary key,
	vnum number  not null,
	subject varchar2(100) not null,
	content varchar2(2000) not null,
	userEmail varchar2(30) references users(userEmail)
);
drop table board purge;
insert into Users values(
seq_no_users.NEXTVAL,'name2','userEmail2','userPassword2',sysdate);

--
create table boardcmt (
	bnum number references board(bnum),
	cnum number  primary key,
	content varchar2(300)  not null,
	userEmail varchar2(30) references users(userEmail)
)
drop table boardcmt purge;
