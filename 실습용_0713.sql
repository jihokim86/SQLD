commit;
-- SQL 함수

SELECT * FROM emp;
SELECT * FROM dept;

-- 사원 이름에 SCOTT 와 같은 데이터 출력
SELECT *
FROM emp
    where upper(ename) = upper('scott');
    
SELECT *
    FROM emp
    where ename = 'scott';

-- 사원 이름에 scott 단어가 포함된 데이터 출력
SELECT *
    FROM emp
    where UPPER(ename) LIKE upper('%scott%');
    
-- 사원 이름의 길이가 5이상인 경우만 출력
SELECT
    ename, length(ename)
FROM emp
where length(ename)>=5;

-- 한글의 경우 글자단위와 바이트 단위가 있음.
-- lengthb << byte단위

SELECT
    length('한글'),lengthb('한글')
FROM dual;
-- euc-kr에서 한글은 글자당 2바이트. utf-8에서는 3바이크로 인식

SELECT
    LENGTH(convert('한글','KO16MSWIN949')),
    LENGTH(convert('한글 HANGUL','KO16MSWIN949'))
FROM dual;


-- 이름글자의 일부를 추출하고자 한다.
--1) 처음 2글자
--2) 3번째에서 2개
--3) 5번째 글자만

SELECT
    ename,SUBSTR(ename,1,2),SUBSTR(ename,3,2),SUBSTR(ename,5)
FROM emp;

--특정문자열 찾기
SELECT
    INSTR('HELLO ORACLE','L') AS INSSTR_1,
    --문자열을 1글자부터 검색하여 처음 나온 L의 위치
    INSTR('HELLO ORACLE','L',5) AS INSSTR_2,
    --문자열의 5글자부터 검색하여 처음 나온 L의 위치
    INSTR('HELLO ORACLE','L',2,2) AS INSSTR_3
    --문자열의 2글자부터 검색하여 2번째 나온 L의 위치
FROM DUAL;

-- 특정 문자열 바꾸기
SELECT
    '010-1234-5678' AS REPLACE_BEFORE,
    REPLACE('010-1234-5678','-','') AS REPLACE_1,
    REPLACE('010-1234-5678','-') AS REPLACE_2
FROM DUAL;

--특정 문자열 채우기
SELECT
    RPAD('971225-1',14,'*') AS RPAD_JMNO,
    RPAD('010-1234-',13,'*') AS RPAD_JMNO
FROM DUAL;

-- 두 열 사이에 : 넣고 연결
SELECT
    CONCAT(empno,ename),
    CONCAT(empno, CONCAT(':',ename))
FROM emp
where ename = 'SCOTT';

-- TRIM 함수로 공백 제거
SELECT
    '[' || trim ('  _oracle_  ') || ']' as trim,
    '[' || ltrim ('  _oracle_  ') || ']' as ltrim1,
    '[' || ltrim ('a_oracle_','_a') || ']' as ltrim2,
    '[' || rtrim ('  _oracle_  ') || ']' as rtrim1,
    '[' || rtrim ('  <_oracle_a','a_') || ']' as rtrim2
FROM dual;

--숫자와 관련된 함수
-- round : 
--trunc : 특정위치에서 버림한 값
--ceil : 지정된 숫자보다 큰 정수 중 가장 작은 정수
--floor : 지정된 숫자보다 큰 정수 중 가장 큰 정수
--mod : 나눈 나머지 값

SELECT
    ROUND(1234.5678) as round,
    ROUND(1234.5678,0) as round_0,
    ROUND(1234.5678,1) as round_1,
    ROUND(1234.5678,2) as round_2,
    ROUND(1234.5678,-1) as round_minus1,
    ROUND(1234.5678,-2) as round_minus2
FROM dual;


--날짜 표시
SELECT
    sysdate,
    add_months(sysdate,3)
FROM dual;

-- 입사 10주년이 되는 사원들의 시점을 출력
SELECT
    empno,ename, hiredate, add_months(hiredate,120) as work10year
FROM emp;

SELECT
    datediff(curdate(),hiredate)
FROM emp;


--현재 날짜와 시간을 출력
SELECT
    to_char(sysdate,'YYYY/MM/DD HH24:MI:SS')
FROM dual;

SELECT
    sysdate,
    to_char(sysdate,'MM') as mm,
    to_char(sysdate,'MON') as MON,
    to_char(sysdate,'MONTH') as MONTH,
    to_char(sysdate,'DD') as DD,
    to_char(sysdate,'DY') as DY,
    to_char(sysdate,'DAY') as DAY
FROM dual;

