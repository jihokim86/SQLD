SELECT
    *
FROM team;

--팀 테이블에서 Zip코드1와 zip코드2를 숫자로 변환 후 더해라
SELECT
team_id 팀ID
, to_number(zip_code1,'9999')+TO_NUMBER(zip_code2,'9999') 우편번호함
FROM team;


--현재 날짜 확인
SELECT
    sysdate
FROM dual;

--사원(EMP)테이블의 입사일자에서 년,월,일 데이터를 출력
SELECT
    ename 사원명, hiredate 입사일자
    , EXTRACT(YEAR FROM hiredate) 입사년도
    , EXTRACT(MONTH FROM hiredate) 입사월
    , EXTRACT(day from hiredate) 입사일
FROM emp;

-- 날짜를 정해진 문자 형태로 변형한다.
SELECT
    TO_char(sysdate, 'yyyy/mm/dd') 날짜
    ,to_char(sysdate, 'yyyy_mm_dd') 문자형
FROM dual;

SELECT
    to_char(123456789/1200 , '$999,999,999,999') 환율반영달러
FROM DUAL;

--반올림 및 올림해 정수 기준으로 출력한다
SELECT
ename, ROUND(sal,-1),CEIL(sal)
FROM emp;
