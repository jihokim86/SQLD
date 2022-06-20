SELECT
    *
FROM player;


SELECT
    COUNT(*) as 전체행수, COUNT(height) 키건수,
    max(height) 최대키, min(height) 최소키, round(avg(height),2) 평균키
FROM player;

--k리그 선수들의 포지션별 평균키는 어떻게 되는가?
SELECT
    avg(height), position
FROM player
GROUP BY position;

--MF선수들의 평균키는?
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

--포지션별 평균키만 출력하는데 최대키가 190 이상인 선수를 갖고잇는 포지션의 정보만 출력
SELECT
    position, count(*), avg(height)
FROM player
GROUP BY position
having max(height)>=190;

-- 개별 입사정보에서 월별 데이터를 추출하는 작업을 진행
SELECT
    ename 사원명, empno 부서번호,sal 급여, extract(month from hiredate)입사월
FROM emp;





