drop table member; --테이블 삭제

--테이블 속성 변경
--alter table UserTbl drop column UserAge 
-- UserTbl 테이블에서 UserAge 컬럼을 삭제 합니다. (drop은 폴더 삭제라고 생각하면 됩니다.)
--select * from UserTbl


create table member(
 name varchar2(10),
 userid varchar2(10),
 pwd varchar2(10),
 email varchar2(20),
 phone char(13),
 admin number(1) default 0, -- 0:사용자 1:관리자
 primary key(userid)
 );
 
INSERT INTO member
 VALUES('이소미','somi','1234','gmd@naver.com','010-2362-5157',0);
 
INSERT INTO member
 VALUES('하상오','sang12','1234','ha12@naver.com' ,'010-5629-8888',0);
 
INSERT INTO member
 VALUES('김윤승','light','1234','youn1004@naver.com','010-9999-8282',0);
 
 SELECT
     *
 FROM member;
 
 update member set admin=1
 where userid='sang12';
 
 commit;