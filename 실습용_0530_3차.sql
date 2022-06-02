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
    salary 원래급여,
    DECODE(department_id,60,salary*1.1, salary) 조정된급여,
    DECODE(department_id,60,'10%인상', '미인상') 인상여부
FROM employees;



SELECT employee_id,first_name, last_name,salary,
    CASE
        WHEN salary >= 9000 then '상위급여'
        WHEN salary between 6000 and 8999 then '중위급여'
        else '하위급여'
    END AS 급여등급
FROM employees
where job_id='IT_PROG';

SELECT
    employee_id,
    salary,
    RANK() OVER (ORDER BY salary DESC) RANK_급여,
    DENSE_RANK() OVER (ORDER BY salary DESC) DENSE_RANK_급여,
    ROW_NUMBER() OVER (ORDER BY salary DESC) ROW_NUMBER_급여
FROM employees;

SELECT
    a.employee_id,
    a.department_id,
    b.department_name,
    salary,
    RANK() over(PARTITION by a.department_id order by salary desc) rank_급여,
    dense_RANK() over(PARTITION by a.department_id order by salary desc) dense_RANK_급여,
    row_number() over(PARTITION by a.department_id order by salary desc) row_number_급여
FROM employees a, departments b
where a.department_id = b.department_id
order by b.department_id,a.salary desc;
