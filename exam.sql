DROP TABLE t_member CASCADE CONSTRAINTS; 
--���̺�����ϱ� ���� �����ϱ�

CREATE TABLE t_member (
    id varchar2(10) PRIMARY KEY,
    pwd varchar2(10), 
    name varchar2(50), 
    email varchar2(50), 
    joinDate DATE DEFAULT SYSDATE
    
);

insert into t_member
values('lee','1212','�̼���','lee@tsts.com', sysdate);

insert into t_member
values('kim','1212','������','kim@tsts.com', sysdate);

insert into t_member
values('park','1212','�����','park@tsts.com', sysdate);



SELECT  * FROM t_member;

UPDATE t_member set name='�̼���' where id='lee';

DELETE FROM t_member WHERE id='lee';
