SELECT
    *
FROM player;

--선수명 포지션 백넘버 키







SELECT
player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where height BETWEEN 170 and 180;

SELECT
player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE position=null;





SELECT
player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE position is null;


--소속이 삼성인 조건과 키가 170이상인 조건을 가진 선수들을 조회
SELECT
 player_name 선수명, position 포지션, back_no 백넘버, height 키   
FROM player;


SELECT
  player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where team_id='K02'
AND height>=170;


--소속이 삼성블루윙즈 or 전남드래곤즈이면서 미드필더를 출력
SELECT
    player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where team_id in ('K02','K07') AND position='MF';



SELECT
    player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where   team_id='K02' 
    or  team_id='K07' 
    AND position='MF'
    AND height>=170
    AND height<=180;


SELECT
    team_id 팀ID,player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
where   (team_id='K02' or  team_id='K07') 
    AND position='MF'
    AND height>=170
    AND height<=180;


SELECT
   team_id 팀ID,player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id IN ('K02','K07')
    AND position='MF'
    AND height>=170
    AND height<=180;
    

SELECT
   player_name 선수명, position 포지션, back_no 백넘버, height 키
FROM player
WHERE team_id='K02'
    and not position='MF'
    and not height BETWEEN 175 and 185;
    

SELECT
    player_name 선수명, nation 국적
FROM player
WHERE nation is NOT null;
