-- 날짜 표시 형식

SELECT
    TO_CHAR(SYSDATE,'yyyy"년" MM"월" DD"일" HH24"시" MI"분" SS"초"')
FROM DUAL;

-- 여러 언어로 날짜(월) 출력 -> 홈페이지 다국어 지원
SELECT
    SYSDATE, 
    TO_CHAR(SYSDATE,'MM') as MM,
    TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE=KOREAN') as MON_KOR,
    TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE=JAPANESE') as MON_JPN,
    TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE=ENGLISH') as MON_ENG,
    TO_CHAR(SYSDATE,'MONTH','NLS_DATE_LANGUAGE=ENGLISH') as MONTH_ENG
FROM dual;

-- 여러가지 숫자 형식 사용하여 급여 출력하기
SELECT
    sal,
    TO_CHAR(sal,'$999,999') as sal_$,
    TO_CHAR(sal,'L999,999') as sal_L,
    TO_CHAR(sal,'999,999.00') as sal_1,
    TO_CHAR(sal,'000999999.99') as sal_3,
    TO_CHAR(sal,'999,999,00') as sal_4
FROM EMP;

-- 1981년 6월 1일 이후에 입사한 사원의 정보 출력

SELECT
    *
FROM emp
where hiredate > to_date('1981/06/01','YYYY/MM/DD');

-- null은 계산을 하면 결과는 null이 된다
-- 그래서 null를 계산할때는 NVL과 NVL2를 사용하면됨.
--NVL
SELECT
    ename,sal,comm,sal+comm,
    nvl(comm,0),
    sal+nvl(comm,0)
FROM emp;

--NVL2
SELECT
    ename,sal,comm,
    nvl2(comm,'0','x'),
    nvl2(comm,sal*12+comm,sal*12) as annsal
FROM emp;
--comm 이 있으면 '0'를 ~ null이면~ 'x'

-- decode 함수와 case문이 있는데(decode를 권함,case는 오라클전용)
SELECT
    empno,ename, job, sal,
    decode(job, 'manager', sal*1.1,
                'salesman', sal*1.05,
                'analyst', sal,
                 sal*1.03) as upsal
FROM emp;

-- 다중행 ??
SELECT * FROM emp;
SELECT sum(sal) FROM emp;

--emp 테이블의 수
SELECT
    count(*)
FROM emp;

-- 부서 번호가 30인 직원 수
SELECT
    COUNT(*)
FROM emp
where deptno=30;

-- 추가 수당 받은 사람의 수
SELECT
    count(comm)
FROM emp;

SELECT
    count(comm)
FROM emp
where comm is not null;


--부서 번호가 20인 사원의 입사일 중 제일 최근 입사일
SELECT
   to_date(to_date(sysdate,'YY-MM')-to_date(hiredate,'YY-MM-DD'),'YY-MM')
FROM emp
where deptno=20;

-- group  by 절과 having절
--select
--from
--where
--gruop by
--having
--orderby

-- where 절과 having 절의 차이
SELECT
    deptno, job, avg(sal)
FROM emp
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

SELECT
    deptno, job, avg(sal)
FROM emp
where sal <= 3000
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

-- pivot 함수 사용 (행렬 교환)
SELECT
    *
FROM (SELECT
        deptno,job,sal
      FROM emp)
pivot(max(sal)
        for deptno in(10,20,30))
order by job;

-- join
SELECT
    e.empno, e.ename, d.deptno, d.dname, d.loc
FROM emp e, dept d
where e.deptno = d.deptno
order by d.deptno, e.empno;

-- 서브쿼리
-- 서브쿼리로 jones의 급여보다 높은 급여를 받는 사원 정보 출력
SELECT
    *
FROM emp
where sal > (SELECT
                sal
             FROM emp
             where ename='JONES');
                

-- 실무형 쿼리
SELECT
    e.empno, e.ename, d.deptno, d.dname, d.loc
FROM emp e, dept d
where e.deptno = d.deptno
and e.deptno = 20
and e.sal > (SELECT avg(sal)
                from emp);
