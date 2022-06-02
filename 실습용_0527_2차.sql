

SELECT*FROM EMPLOYEES;

SELECT employee_id, email FROM EMPLOYEES;

SELECT employee_id, first_name, last_name FROM employees ORDER by employee_id DESC;

SELECT DISTINCT job_id FROM employees; 
--중복값 제거

SELECT employee_id as 사원번호, first_name as 이름, last_name as 성 FROM employees;

SELECT employee_id, first_name ||' '||  last_name, email || '@'||'company.com' FROM employees;

SELECT employee_id, salary, salary+500, salary-100, (salary*1.1)/2 FROM EMPLOYEES;

SELECT  employee_id as 사원번호,
        salary as 급여, 
        salary+500 as 추가급여, 
        salary-100 as 인하급여, 
        (salary*1.1)/2 as 조정급여 
FROM EMPLOYEES;


SELECT*FROM EMPLOYEES where employee_id=100;

SELECT*FROM EMPLOYEES where first_name='David';

SELECT*FROM EMPLOYEES where employee_id>=105;

SELECT*FROM EMPLOYEES where 20000>=salary and salary >=10000;

SELECT*FROM EMPLOYEES where salary BETWEEN 10000 and 20000;

SELECT*FROM EMPLOYEES where salary IN (10000,17000,24000);

SELECT*FROM EMPLOYEES where job_id LIKE 'AD%';


--2022-05-27---------------------------------------------------------------------


SELECT*FROM EMPLOYEES where job_id LIKE 'AD___';
--AD 이후 3글자 출력 ( _ ) 3개 삽입

SELECT*FROM employees where manager_id is null;

--SELECT*FROM employees where manager_id is 100; 오류발생

SELECT*FROM employees where manager_id='100';

SELECT * FROM employees where salary>4000 AND job_id='IT_PROG' OR job_id='FI_ACCOUNT';

SELECT * FROM employees where employee_id <> 105;

SELECT * FROM employees where manager_id is not null;
--SELECT * FROM employees where manager_id <> null;

SELECT last_name, 
UPPER(last_name) as upper적용,
Lower(last_name) as lower적용, 
email,
INITCAP(email) as initcap적용 
FROM employees ;

SELECT job_id,SUBSTR(job_id,1,2) 적용결과 FROM employees; 

SELECT job_id,replace(job_id,'ACCOUNT','ACCNT')변경 FROM employees; 

SELECT first_name, LPAD(first_name,12,'*') FROM employees;

SELECT
    'start'||TRIM(' -space- ')||'end' 제거된_공백
FROM dual;

SELECT
    salary,
    salary/30 일급,
    trunc(salary/30,0) 적용결과0,
    trunc(salary/30,1) 적용결과1,
    trunc(salary/30,-1) 적용결과2
FROM employees;
