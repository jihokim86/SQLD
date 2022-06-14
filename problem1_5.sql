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
    player_name as 선수명 ,position as 포지션, NVL(position,'없음') as NL포지션
FROM player
where team_id='K08';

SELECT
ename 사원명 , sal 월급, comm 커미션, (sal*12)+comm 연봉A, (sal*12)+NVL(comm,0) 연봉B
FROM emp;

