--SELECT 
--    count(salary)
--FROM employees;
--
--SELECT
--    *
--FROM employees;
--
--SELECT
--    SUM(salary) �հ�,
--    AVG(salary) ���,
--    SUM(salary)/count(salary) ���
--FROM employees;
--
--SELECT
--    MAX(salary) �ִ�,
--    MIN(salary) �ּ�,
--    MAX(first_name) �ִ빮�ڰ�,
--    MIN(first_name) �ּҹ��ڰ�
--FROM employees;
--
--SELECT
--job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿� 
--FROM employees
--where employee_id>=10
--GROUP BY job_id
--ORDER BY ������_�ѱ޿� DESC,������_��ձ޿�;
--
--
--SELECT
--job_id job_id_��׷�,
--manager_id manager_id_�߱׷�,
--SUM(salary) �׷���_�ѱ޿�,
--AVG(salary) �׷���_��ձ޿�
--FROM employees
--where employee_id>=10
--GROUP BY job_id,manager_id
--ORDER BY �׷���_�ѱ޿� DESC,�׷���_��ձ޿�;
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
--null���� ���Ե��� ���� 106�� ??? ���εǴ°� �Ӿ�?? �׳� �ҷ����°Ŷ� ���� ������

SELECT COUNT(*) ���εȼ�
FROM employees a, departments b
WHERE a.department_id = b.department_id
ORDER BY a.employee_id;
--null���� ���Ե��� ���� 106�� ??? ���εǴ°� �Ӿ�?? �׳� �ҷ����°Ŷ� ���� ������

SELECT a.department_id,b.department_id 
FROM employees a, departments b
WHERE a.department_id = b.department_id
ORDER BY a.employee_id;


SELECT a.department_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a, departments b
WHERE a.department_id = b.department_id(+)
ORDER BY a.employee_id;
--null���� ���� 107��

SELECT a.department_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a, departments b
WHERE a.department_id(+) = b.department_id
ORDER BY a.employee_id;
--null���� ���� 122��





























