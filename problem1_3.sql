SELECT
    *
FROM team;

--�� ���̺��� Zip�ڵ�1�� zip�ڵ�2�� ���ڷ� ��ȯ �� ���ض�
SELECT
team_id ��ID
, to_number(zip_code1,'9999')+TO_NUMBER(zip_code2,'9999') �����ȣ��
FROM team;


--���� ��¥ Ȯ��
SELECT
    sysdate
FROM dual;

--���(EMP)���̺��� �Ի����ڿ��� ��,��,�� �����͸� ���
SELECT
    ename �����, hiredate �Ի�����
    , EXTRACT(YEAR FROM hiredate) �Ի�⵵
    , EXTRACT(MONTH FROM hiredate) �Ի��
    , EXTRACT(day from hiredate) �Ի���
FROM emp;

-- ��¥�� ������ ���� ���·� �����Ѵ�.
SELECT
    TO_char(sysdate, 'yyyy/mm/dd') ��¥
    ,to_char(sysdate, 'yyyy_mm_dd') ������
FROM dual;

SELECT
    to_char(123456789/1200 , '$999,999,999,999') ȯ���ݿ��޷�
FROM DUAL;

--�ݿø� �� �ø��� ���� �������� ����Ѵ�
SELECT
ename, ROUND(sal,-1),CEIL(sal)
FROM emp;
