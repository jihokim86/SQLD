SELECT
    *
FROM player;


SELECT
    COUNT(*) as ��ü���, COUNT(height) Ű�Ǽ�,
    max(height) �ִ�Ű, min(height) �ּ�Ű, round(avg(height),2) ���Ű
FROM player;

--k���� �������� �����Ǻ� ���Ű�� ��� �Ǵ°�?
SELECT
    avg(height), position
FROM player
GROUP BY position;

--MF�������� ���Ű��?
SELECT
    avg(height)
FROM player
where position='MF';

SELECT
    position,count(*), round(avg(height),2), max(height), min(height) 
FROM player
GROUP BY position;

SELECT
position,count(*), round(avg(height),2),max(height), min(height)
    FROM player
GROUP BY position
having round(avg(height),2)>=180;

SELECT
position,count(*), round(avg(height),2),max(height), min(height)
    FROM player
    having round(avg(height),2)>=180
GROUP BY position;

SELECT
    team_id, count(*)
FROM player
GROUP BY team_id
having team_id in('K09','K02');

--�����Ǻ� ���Ű�� ����ϴµ� �ִ�Ű�� 190 �̻��� ������ �����մ� �������� ������ ���
SELECT
    position, count(*), avg(height)
FROM player
GROUP BY position
having max(height)>=190;

-- ���� �Ի��������� ���� �����͸� �����ϴ� �۾��� ����
SELECT
    ename �����, empno �μ���ȣ,sal �޿�, extract(month from hiredate)�Ի��
FROM emp;





