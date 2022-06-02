--SELECT 
--    count(salary)
--FROM employees;
--
--SELECT
--    *
--FROM employees;
--
--SELECT
--    SUM(salary) 합계,
--    AVG(salary) 평균,
--    SUM(salary)/count(salary) 평균
--FROM employees;
--
--SELECT
--    MAX(salary) 최대,
--    MIN(salary) 최소,
--    MAX(first_name) 최대문자값,
--    MIN(first_name) 최소문자값
--FROM employees;
--
--SELECT
--job_id 직무, SUM(salary) 직무별_총급여, AVG(salary) 직무별_평균급여 
--FROM employees
--where employee_id>=10
--GROUP BY job_id
--ORDER BY 직무별_총급여 DESC,직무별_평균급여;
--
--
--SELECT
--job_id job_id_대그룹,
--manager_id manager_id_중그룹,
--SUM(salary) 그룹핑_총급여,
--AVG(salary) 그룹핑_평균급여
--FROM employees
--where employee_id>=10
--GROUP BY job_id,manager_id
--ORDER BY 그룹핑_총급여 DESC,그룹핑_평균급여;
--
--SELECT
--    job_id, SUM(salary)
--FROM employees
--where employee_id>10
--HAVING SUM(salary)>30000
--GROUP BY job_id
--order by SUM(salary) desc;
--
--
--SELECT
--    job_id, SUM(salary)
--FROM employees
--GROUP BY job_id
--order by SUM(salary) desc;
--
--
--SELECT
--    a.first_name, a.last_name, B.*
--FROM employees a, job_history b
--where a.employee_id=b.employee_id
--and a.employee_id=101;
--
--
--SELECT
--    *
--FROM employees A, departments B
--WHERE a.department_id = b.department_id;
--
----SELECT a.em
----FROM employees a, departments b, locations c
----where a.department_id=b.department_id and b.location_id=c.location_id;
--

--SELECT
--    a.department_id , b.department_id,c.location_id,b.department_name
--FROM employees A,departments B,locations C;
--where a.department_id=b.department_id and b.location_id=c.location_id;

SELECT *
FROM employees a, departments b
ORDER BY a.employee_id;
--null값이 포함되지 않음 106개 ??? 조인되는게 머야?? 그냥 불러오는거랑 무슨 차이지

SELECT COUNT(*) 조인된수
FROM employees a, departments b
WHERE a.department_id = b.department_id
ORDER BY a.employee_id;
--null값이 포함되지 않음 106개 ??? 조인되는게 머야?? 그냥 불러오는거랑 무슨 차이지

SELECT a.department_id,b.department_id 
FROM employees a, departments b
WHERE a.department_id = b.department_id
ORDER BY a.employee_id;


SELECT a.department_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a, departments b
WHERE a.department_id = b.department_id(+)
ORDER BY a.employee_id;
--null값을 포함 107개

SELECT a.department_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a, departments b
WHERE a.department_id(+) = b.department_id
ORDER BY a.employee_id;
--null값을 포함 122개





























