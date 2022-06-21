SELECT 
    *
FROM emp;


SELECT ename,deptno
,CASE month WHEN 1 then sal end as m01, CASE month WHEN 2 then sal end as m02
,CASE month WHEN 3 then sal end as m03, CASE month WHEN 4 then sal end as m04
,CASE month WHEN 5 then sal end as m05, CASE month WHEN 6 then sal end as m06
,CASE month WHEN 7 then sal end as m07, CASE month WHEN 8 then sal end as m08
,CASE month WHEN 9 then sal end as m09, CASE month WHEN 10 then sal end as m10
,CASE month WHEN 11 then sal end as m11, CASE month WHEN 12 then sal end as m12
FROM (select ename,deptno,extract(month from hiredate) as month,sal from emp);

select ename,deptno,extract(month from hiredate) as month,sal from emp;
--���� �Ի����� ��� �޿�
SELECT
    deptno
    ,avg(CASE month WHEN 1 then sal end) as m01, avg(CASE month WHEN 2 then sal end) as m02
    ,avg(CASE month WHEN 3 then sal end) as m03, avg(CASE month WHEN 4 then sal end) as m04
    ,avg(CASE month WHEN 5 then sal end) as m05, avg(CASE month WHEN 6 then sal end) as m06
    ,avg(CASE month WHEN 7 then sal end) as m07, avg(CASE month WHEN 8 then sal end) as m08
    ,avg(CASE month WHEN 9 then sal end) as m09, avg(CASE month WHEN 10 then sal end) as m10
    ,avg(CASE month WHEN 11 then sal end) as m11, avg(CASE month WHEN 12 then sal end) as m12
    ,COUNT(*)
FROM (SELECT deptno,EXTRACT(month from hiredate)as month,sal from emp)
GROUP BY deptno;


SELECT
    deptno, sum(sal), count(*), avg(sal)
    --,case month when 1 then sal end as M01
FROM emp
GROUP BY deptno;

SELECT
    deptno,sum(sal)
    ,avg(CASE month WHEN 1 then sal end) as m01
FROM (SELECT deptno,EXTRACT(month from hiredate)as month,sal from emp)
GROUP BY deptno;




-- ���� �����Ǻ� �������� �ο����� ���� ��ü �ο����� ���ض�

SELECT
    team_id
    ,sum(case position when 'MF' then 1 end) as MF 
    ,sum(case position when 'FW' then 1 end) as FW
    ,sum(case position when 'DF' then 1 end) as DF
    ,sum(case position when 'GK' then 1 end) as GK
    ,COUNT(*)
FROM player
GROUP BY team_id;

--group by �� ���� �����Ǻ� ���Ű �� ��ü ���Ű
SELECT 
    avg(case position when 'MF' then height end) as Ű
    ,avg(case position when 'FW' then height end) as Ű
    ,avg(case position when 'GK' then height end) as Ű
FROM player;

SELECT 
  *
FROM player;
