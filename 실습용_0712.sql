-- 두 테이블의 내용을 확인
SELECT * FROM emp;
SELECT * FROM dept;

--emp테이블에서 사원번호,이름,사원의 소속부서 번호만 조회
SELECT
    empno,ename,deptno
FROM emp;

-- emp 테이블의 부서번호 종류를 확인
SELECT
    distinct deptno
FROM dept;

-- 곱하기를 사용하지 않고 사원의 연간 총 수입 출력
SELECT 
    ename,sal*12+nvl(comm,0)
FROM emp;

-- 급여기준으로 내림차순 정렬
SELECT
    *
FROM emp
ORDER by sal desc;

-- emp 테이블의 전체 열을 부서번호(오름차순)와 급여(내름차순)로 정렬
-- DB에서 order by를 가능하면 사용하지 말것.
-- index를 활용해라.
SELECT
    ename,sal,deptno
FROM emp
ORDER BY deptno asc, sal DESC;

-- where
-- 부서 번호가 30인 직원만 출력
SELECT
    *
FROM emp
where deptno='30';

-- 사원 번호가 7900인 직원만 출력
SELECT
    *
FROM emp
where empno='7900';

-- 연산자 사용
-- 부서번호가 30이면서 직업이 CLERK 인 직원
SELECT
    *
FROM emp
where deptno='30' and job='CLERK';

-- 급여 열에 12를 곱한 값이 36000인 직원들만 출력
SELECT
    ename,sal*12 as 연봉
FROM emp
where (sal*12) = 36000;

-- ename이 F보다 작거나 같은 직원을 출력(첫문자가 F이면서 대문자)
SELECT
    *
FROM emp
where ename <= 'F';


-- 등가 비교 연산자의 종류
-- 같다 : =
-- 같지 않다 : != , <>, ^=. 논리부정 NOT

SELECT  * FROM emp where sal != 3000;
SELECT  * FROM emp where sal <> 3000;
SELECT  * FROM emp where sal ^= 3000;
SELECT  * FROM emp where NOT sal=3000;

--다음의 코드를 짧게
SELECT
    *
FROM emp
where job = 'MANAGER'
    or job = 'SALESMAN'
    or job = 'CLERK';
    
SELECT
    *
FROM emp
where job IN ('MANAGER','SALESMAN','CLERK');

--다음의 코드를 짧게
-- 급여 값이 2000이상 3000이하 조회
SELECT
    *
FROM emp
where sal >= 2000 and sal <=3000;

SELECT
    *
FROM emp
where sal between 2000 and 3000;


-- ename이 S로 시작하는 데이터만 추력
SELECT
    *
FROM emp
where ename LIKE 'S%';

-- ename이 두번째 글자가 L인 사원만 출력
SELECT
    *
FROM emp
where ename LIKE '_L%';

-- 사원 이름에 AM이 포함된 사원 데이터만 출력
SELECT
    *
FROM emp
where ename LIKE '%AM%';

-- NULL 에 대한 오류 해결
SELECT
    *
FROM emp
where comm = null;

SELECT
    *
FROM emp
where comm is null;

SELECT
    *
FROM emp
where comm is not null;

-- UNION(집합연산자) :중복제거
-- union all : 중복포함
-- minus
-- intersect

SELECT
    empno, ename, sal, deptno
FROM emp
where deptno = '10'

union

SELECT
    empno, ename, sal, deptno
FROM emp
where deptno = '20';

-- SQL 함수
-- 사원 이름을 대문자,소문자,첫글자 대문자로 출력
SELECT
    ename, UPPER(ename), lower(ename), INITCAP(ename)
FROM emp;


--사원 이름에 SCOTT 단어가 포함된 데이터 출력
SELECT
    *
FROM emp
where ename='SCOTT';

SELECT
    *
FROM emp
where ename'SCOTT';


