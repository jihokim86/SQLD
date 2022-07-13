-- �� ���̺��� ������ Ȯ��
SELECT * FROM emp;
SELECT * FROM dept;

--emp���̺��� �����ȣ,�̸�,����� �ҼӺμ� ��ȣ�� ��ȸ
SELECT
    empno,ename,deptno
FROM emp;

-- emp ���̺��� �μ���ȣ ������ Ȯ��
SELECT
    distinct deptno
FROM dept;

-- ���ϱ⸦ ������� �ʰ� ����� ���� �� ���� ���
SELECT 
    ename,sal*12+nvl(comm,0)
FROM emp;

-- �޿��������� �������� ����
SELECT
    *
FROM emp
ORDER by sal desc;

-- emp ���̺��� ��ü ���� �μ���ȣ(��������)�� �޿�(��������)�� ����
-- DB���� order by�� �����ϸ� ������� ����.
-- index�� Ȱ���ض�.
SELECT
    ename,sal,deptno
FROM emp
ORDER BY deptno asc, sal DESC;

-- where
-- �μ� ��ȣ�� 30�� ������ ���
SELECT
    *
FROM emp
where deptno='30';

-- ��� ��ȣ�� 7900�� ������ ���
SELECT
    *
FROM emp
where empno='7900';

-- ������ ���
-- �μ���ȣ�� 30�̸鼭 ������ CLERK �� ����
SELECT
    *
FROM emp
where deptno='30' and job='CLERK';

-- �޿� ���� 12�� ���� ���� 36000�� �����鸸 ���
SELECT
    ename,sal*12 as ����
FROM emp
where (sal*12) = 36000;

-- ename�� F���� �۰ų� ���� ������ ���(ù���ڰ� F�̸鼭 �빮��)
SELECT
    *
FROM emp
where ename <= 'F';


-- � �� �������� ����
-- ���� : =
-- ���� �ʴ� : != , <>, ^=. ������ NOT

SELECT  * FROM emp where sal != 3000;
SELECT  * FROM emp where sal <> 3000;
SELECT  * FROM emp where sal ^= 3000;
SELECT  * FROM emp where NOT sal=3000;

--������ �ڵ带 ª��
SELECT
    *
FROM emp
where job = 'MANAGER'
    or job = 'SALESMAN'
    or job = 'CLERK';
    
SELECT
    *
FROM emp
where job IN ('MANAGER','SALESMAN','CLERK');

--������ �ڵ带 ª��
-- �޿� ���� 2000�̻� 3000���� ��ȸ
SELECT
    *
FROM emp
where sal >= 2000 and sal <=3000;

SELECT
    *
FROM emp
where sal between 2000 and 3000;


-- ename�� S�� �����ϴ� �����͸� �߷�
SELECT
    *
FROM emp
where ename LIKE 'S%';

-- ename�� �ι�° ���ڰ� L�� ����� ���
SELECT
    *
FROM emp
where ename LIKE '_L%';

-- ��� �̸��� AM�� ���Ե� ��� �����͸� ���
SELECT
    *
FROM emp
where ename LIKE '%AM%';

-- NULL �� ���� ���� �ذ�
SELECT
    *
FROM emp
where comm = null;

SELECT
    *
FROM emp
where comm is null;

SELECT
    *
FROM emp
where comm is not null;

-- UNION(���տ�����) :�ߺ�����
-- union all : �ߺ�����
-- minus
-- intersect

SELECT
    empno, ename, sal, deptno
FROM emp
where deptno = '10'

union

SELECT
    empno, ename, sal, deptno
FROM emp
where deptno = '20';

-- SQL �Լ�
-- ��� �̸��� �빮��,�ҹ���,ù���� �빮�ڷ� ���
SELECT
    ename, UPPER(ename), lower(ename), INITCAP(ename)
FROM emp;


--��� �̸��� SCOTT �ܾ ���Ե� ������ ���
SELECT
    *
FROM emp
where ename='SCOTT';

SELECT
    *
FROM emp
where ename'SCOTT';


