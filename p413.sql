drop table member; --���̺� ����

--���̺� �Ӽ� ����
--alter table UserTbl drop column UserAge 
-- UserTbl ���̺��� UserAge �÷��� ���� �մϴ�. (drop�� ���� ������� �����ϸ� �˴ϴ�.)
--select * from UserTbl


create table member(
 name varchar2(10),
 userid varchar2(10),
 pwd varchar2(10),
 email varchar2(20),
 phone char(13),
 admin number(1) default 0, -- 0:����� 1:������
 primary key(userid)
 );
 
INSERT INTO member
 VALUES('�̼ҹ�','somi','1234','gmd@naver.com','010-2362-5157',0);
 
INSERT INTO member
 VALUES('�ϻ��','sang12','1234','ha12@naver.com' ,'010-5629-8888',0);
 
INSERT INTO member
 VALUES('������','light','1234','youn1004@naver.com','010-9999-8282',0);
 
 SELECT
     *
 FROM member;
 
 update member set admin=1
 where userid='sang12';
 
 commit;