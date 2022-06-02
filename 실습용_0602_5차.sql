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

--�����࿬����
SELECT *
FROM employees a
WHERE a.salary = (SELECT salary 
                  FROM employees
                  WHERE last_name = 'De Haan'
                  );
-- �� �ڵ�� ����                 
SELECT *
FROM employees a
WHERE a.salary = 17000;

--���� �߻���. �̸��� �ٲ�µ�~
-- salary�� 17000�� �����Ѱ�??
-- Talay�̸��� ���� ����� 2���̴� ���� 2����������~
-- �׷�~ salary �� ������ ���Ҳ���?? �׷���~��������~
--������
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
where a.salary IN ( SELECT MIN(salary) �����޿�
                    FROM employees
                    GROUP by department_id
                  )
ORDER BY a.salary DESC;


SELECT
   a.employee_id, a.department_id
FROM employees a
where a.salary IN ( SELECT MIN(salary) �����޿�
                    FROM employees
                    GROUP by department_id
                  )
ORDER BY a.salary DESC;


SELECT    *
FROM employees a
WHERE (a.job_id, a.salary) IN (SELECT job_id, MIN(salary) �׷캰�޿�
                                from employees
                                group by job_id
                                )
ORDER by a.salary DESC;                                


SELECT    *
FROM employees a,(SELECT department_id
                  FROM departments
                  WHERE department_name='IT') b
WHERE a.department_id = b.department_id;                  


--SQL�� ������ϸ� ���ԷµȰ� ������Ƿ� commit�� �ؾ��Ѵ�.
INSERT INTO departments (department_id,department_name,manager_id,location_id)
VALUES (271,'Sample_Dept',200,1700);
--�Ʒ��� ���� �ص� ��! �Ӽ��� ������!
--INSERT INTO departments
--VALUES (271,'Sample_Dept',200,1700);


INSERT INTO departments
VALUES (272,null,200,1700);


SELECT
    *
FROM departments
ORDER BY department_id desc;


commit; -- ���� �Ϸ�..

DELETE FROM


UPDATE departments 
set manager_id=201,
    location_id = 1800
where department_name = 'Sample_Dept';




