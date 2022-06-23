SELECT
    *
FROM player A, team B
where a.position='GK' and a.team_id=b.team_id;

SELECT
    a.player_name 선수명,a.back_no 백넘버, 
    b.region_name 연고지, b.team_name 팀명
FROM player a, team b
where a.position='GK' and a.team_id=b.team_id
order by a.back_no;



SELECT
    player.player_name 선수명,a.back_no 백넘버
FROM player a, team b
where a.position='GK' and a.team_id=b.team_id
order by a.back_no;


SELECT
    a.region_name, a.team_name, a.stadium_id
    ,stadium_name,seat_count
FROM team a, stadium b
where a.stadium_id = b.stadium_id;


SELECT
    *
FROM emp a, salgrade b;


CREATE TABLE SAL_GRADE (
    GRADE number,
    LOSAL number,
    HISAL number
);

insert into SAL_GRADE values('1','700','1200');
insert into SAL_GRADE values('3','1401','2000');
insert into SAL_GRADE values('2','1201','1400');
insert into SAL_GRADE values('4','2001','3000');
insert into SAL_GRADE values('2','1201','1400');
insert into SAL_GRADE values('4','2001','3000');
insert into SAL_GRADE values('4','2001','3000');
insert into SAL_GRADE values('4','2001','3000');
insert into SAL_GRADE values('5','3001','9999');
commit;

SELECT
    *
FROM SAL_GRADE;
delete from sal_grade where grade='4';

SELECT
    a.ename,a.sal,b.grade
FROM emp a, sal_grade b
where a.sal BETWEEN b.losal and b.hisal;



SELECT
    a.player_name,a.position
    ,b.region_name,b.team_name
    ,c.stadium_name
FROM player a, team b, stadium c
where b.team_id = a.team_id and c.stadium_id = b.stadium_id
order by a.player_name;


SELECT
    a.stadium_name,a.stadium_id,a.seat_count,a.hometeam_id,b.team_name
FROM stadium a, team b
where b.team_id (+) = a.hometeam_id ;




SELECT
    a.ename,a.deptno,b.dname,b.loc
FROM emp a, dept b
where b.deptno = a.deptno(+);



SELECT
    a.empno, a.ename, b.deptno,b.dname
FROM emp a inner join dept b
on b.deptno = a.deptno;



SELECT
    a.empno, a.ename,deptno,b.dname
FROM emp a NATURAL join dept b;



SELECT
    *
FROM emp;

SELECT
    *
FROM dept;



