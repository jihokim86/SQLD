SELECT
    mgr,ename
FROM emp
WHERE ename='SCOTT';

SELECT
    *
FROM emp
where ename='KING';

SELECT
NVL(mgr,9999)
FROM emp
where ename = 'KING';

SELECT
mgr
FROM emp
WHERE ename='jsc';

SELECT
NVL(mgr,9999)
FROM emp
WHERE ename='jsc';