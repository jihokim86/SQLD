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
   department_id
FROM employees a
where a.salary IN ( SELECT MIN(salary) �����޿�
                    FROM employees
                    GROUP by department_id
                  )
ORDER BY a.salary DESC;

      
