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
   a.employee_id, a.department_id
FROM employees a
where a.salary IN ( SELECT MIN(salary) 최저급여
                    FROM employees
                    GROUP by department_id
                  )
ORDER BY a.salary DESC;


SELECT    *
FROM employees a
WHERE (a.job_id, a.salary) IN (SELECT job_id, MIN(salary) 그룹별급여
                                from employees
                                group by job_id
                                )
ORDER by a.salary DESC;                                


SELECT    *
FROM employees a,(SELECT department_id
                  FROM departments
                  WHERE department_name='IT') b
WHERE a.department_id = b.department_id;                  


--SQL를 재부팅하면 행입력된게 사라지므로 commit을 해야한다.
INSERT INTO departments (department_id,department_name,manager_id,location_id)
VALUES (271,'Sample_Dept',200,1700);
--아래와 같이 해도 됨! 속성만 맞으면!
--INSERT INTO departments
--VALUES (271,'Sample_Dept',200,1700);


INSERT INTO departments
VALUES (272,null,200,1700);


SELECT
    *
FROM departments
ORDER BY department_id desc;


commit; -- 저장 완료..

DELETE FROM


UPDATE departments 
set manager_id=201,
    location_id = 1800
where department_name = 'Sample_Dept';




