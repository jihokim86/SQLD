SELECT
    nvl(null,'NVL-OK') isnull_test
FROM dual;

SELECT
    *
FROM dual;

select 
nvl('Not-Null','NVL-OK') as insnull_test 
from dual;

SELECT
    player_name as ������ ,position as ������, NVL(position,'����') as NL������
FROM player
where team_id='K08';

SELECT
ename ����� , sal ����, comm Ŀ�̼�, (sal*12)+comm ����A, (sal*12)+NVL(comm,0) ����B
FROM emp;

