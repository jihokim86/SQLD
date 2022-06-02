SELECT
    *
FROM employees
ORDER BY commission_pct;

SELECT
    salary* commission_pct
FROM employees
ORDER BY commission_pct;

SELECT
    NVL(commission_pct,1)*salary
FROM employees
ORDER BY commission_pct;

SELECT
    first_name,last_name,department_id,
    salary �����޿�,
    DECODE(department_id,60,salary*1.1, salary) �����ȱ޿�,
    DECODE(department_id,60,'10%�λ�', '���λ�') �λ󿩺�
FROM employees;



SELECT employee_id,first_name, last_name,salary,
    CASE
        WHEN salary >= 9000 then '�����޿�'
        WHEN salary between 6000 and 8999 then '�����޿�'
        else '�����޿�'
    END AS �޿����
FROM employees
where job_id='IT_PROG';

SELECT
    employee_id,
    salary,
    RANK() OVER (ORDER BY salary DESC) RANK_�޿�,
    DENSE_RANK() OVER (ORDER BY salary DESC) DENSE_RANK_�޿�,
    ROW_NUMBER() OVER (ORDER BY salary DESC) ROW_NUMBER_�޿�
FROM employees;

SELECT
    a.employee_id,
    a.department_id,
    b.department_name,
    salary,
    RANK() over(PARTITION by a.department_id order by salary desc) rank_�޿�,
    dense_RANK() over(PARTITION by a.department_id order by salary desc) dense_RANK_�޿�,
    row_number() over(PARTITION by a.department_id order by salary desc) row_number_�޿�
FROM employees a, departments b
where a.department_id = b.department_id
order by b.department_id,a.salary desc;
