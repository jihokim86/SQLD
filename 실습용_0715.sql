-- 테이블을 열(가로)로 합치는 방법 : join
SELECT
    *
FROM emp, dept
where emp.deptno=dept.deptno
order by empno;



-- 테이블을 행(세로)로 합치는 방법 : select - 집합연산자(union)


-- 다중 행 서브쿼리의 종류
   -- IN : 하나라도 있으면 true
    -- ANY, SOME : 하나 이상이면 true
    -- ALL : 모두가 만족하면 true
    -- EXISTS : 1행 이상일 경우 true
    
    
-- 서브쿼리 이용
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT
    *
FROM emp
where sal in (select MAX(sal)
                from emp
                group by deptno);
                
-- 30번 부서 사원들의 최소 급여보다 많은 급여를 받는 사원 정보
SELECT
    *
FROM emp
where sal > any(SELECT sal
                from emp
                where deptno=30);
                
-- commit, rollback(커밋된 자료는 롤백이 되지 않음)

create table dept_tcl 
        as select* from dept;
        
SELECT
    *
FROM dept_tcl;

insert into dept_tcl values(50,'DATABASE','SEOUL');
update dept_tcl set loc='BUSAN' where deptno=40;
delete from dept_tcl where dname='RESEARCH';

ROLLBACK;
commit;


-- 인덱스 생성(B-트리 인덱스(일반 index))
create index emp_ix01 on emp(hiredate);

-- 인덱스 목록 확인
SELECT
    *
FROM user_ind_columns;

-- 인덱스 활용
SELECT
    /*+ index(a emp_ix01) */ a.*
FROM emp a
where hiredate BETWEEN '1981-01-01' and '1981-12-31';

SELECT
    /*+ index(a emp_ix01) */ hiredate
FROM emp;



SELECT
    *
FROM emp
where hiredate BETWEEN '1981-01-01' and '1981-12-31';

drop index emp_ix01;


-- view 생성
create view vw_em21
        as (select empno, ename, job, deptno from emp where deptno=20);
         
-- view 확인하기
select * from user_views;

-- view 삭제
drop view vw_em21;

-- view 적용
SELECT
    *
FROM vw_em20;

-- 주키, 외래키
create table dept_fk(
deptno number(2) constraint deptfk_deptno_pk primary key,
dname varchar2(14),
loc varchar2(13)
);
-------------------------------------------------
create table emp_fk(
    empno number(4) constraint empfk_empno_pk primary key,
    ename VARCHAR2(10),
    job VARCHAR2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2), -- 최대 7자리 정수 --소수점아래 2자리
    comm number(7,2),
    deptno number(2) CONSTRAINT empfk_dept_fk REFERENCES dept_fk(deptno)
);

desc dept_fk;






                

