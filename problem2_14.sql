SELECT
*
FROM emp a natural join dept b;

SELECT
    *
FROM emp a;

SELECT
    *
FROM  dept b;


SELECT
*
FROM emp a inner join dept b
on b.deptno = a.deptno;


create table dept_temp as SELECT
    *
FROM dept;

update dept_temp
set dname='consulting'
where dname='RESEARCH';


update dept_temp
set dname='marketing'
where dname='SALES';

SELECT
    *
FROM dept_temp;

SELECT
    *
FROM DEPT A NATURAL JOIN DEPT_TEMP B;

SELECT
    *
FROM DEPT A JOIN DEPT_TEMP B
ON b.deptno = a.deptno
AND B.DNAME = a.dname
AND B.LOC = A.LOC;

SELECT
    *
FROM DEPT A JOIN dept_temp B
USING (DEPTNO);

SELECT
    DEPTNO
FROM DEPT A JOIN DEPT_TEMP B
USING (DEPTNO);