SELECT
    TO_NUMBER(zip_code1,'999')+ TO_NUMBER(zip_code2, '999')
FROM team;

SELECT
ename
,CASE
    when sal>2000 then sal
    else 2000
    end as revised_salary
FROM emp;

SELECT
ename,sal
FROM emp;


SELECT
loc
,case loc
    when 'NEW YORK' then 'east'
    when 'BOSTON' then 'east'
    when 'CHICAGO' then 'center'
    when 'DALLAS' then 'center'
    else 'ETC'
    end as area
FROM dept;


SELECt
ename, sal
,CASE
    WHEN sal >= 3000 then 'high'
    when sal >= 1000 then 'mid'
    else 'low'
    end salaty_grade
FROM emp;


SELECT
ename,sal
,case
    when sal>=2000 then 1000
    when sal>=1000 then 500
    else 0
    end as bonus
FROM emp;
