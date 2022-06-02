SELECT
    *
FROM employees;

SELECT department_id
FROM employees
UNION
SELECT department_id
FROM departments;

SELECT department_id
FROM employees
UNION all
SELECT department_id
FROM departments;


SELECT department_id
FROM employees
INTERSECT
SELECT department_id
FROM departments;

--단일행연산자
SELECT *
FROM employees a
WHERE a.salary = (SELECT salary 
                  FROM employees
                  WHERE last_name = 'De Haan'
                  );
-- 위 코드와 동일                 
SELECT *
FROM employees a
WHERE a.salary = 17000;

--오류 발생함. 이름만 바꿨는데~
-- salary와 17000이 동일한가??
-- Talay이름을 가진 사람이 2명이니 행이 2개나오겠지~
-- 그럼~ salary 와 누구를 비교할꺼니?? 그러니~오류나지~
--다중행
--SELECT *
--FROM employees a
--WHERE a.salary = (SELECT salary 
--                  FROM employees
--                  WHERE last_name = 'Taylor'
--                  );

SELECT *
FROM employees a
WHERE a.salary IN (SELECT salary 
                  FROM employees
                  WHERE last_name = 'Taylor'
                  );


SELECT
    *
FROM employees a
where a.salary IN ( SELECT MIN(salary) 최저급여
                    FROM employees
                    GROUP by department_id
                  )
ORDER BY a.salary DESC;


SELECT
   department_id
FROM employees a
where a.salary IN ( SELECT MIN(salary) 최저급여
                    FROM employees
                    GROUP by department_id
                  )
ORDER BY a.salary DESC;

      
