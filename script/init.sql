ALTER SESSION SET CONTAINER=XEPDB1;

ALTER SESSION SET CURRENT_SCHEMA=hong;

create table tblItem (
    seq number primary key,
    name varchar2(50) not null,
    price number not null
);
create sequence seqItem;

insert into tblItem values (seqItem.nextVal, '스마트폰', 30000);
insert into tblItem values (seqItem.nextVal, '키보드', 60000);
insert into tblItem values (seqItem.nextVal, '노트북', 2000000);
insert into tblItem values (seqItem.nextVal, '모니터', 300000);
insert into tblItem values (seqItem.nextVal, '외장하드', 100000);


commit;











