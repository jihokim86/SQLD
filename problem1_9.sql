SELECT
    *
FROM player;

--������ ������ ��ѹ� Ű







SELECT
player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
where height BETWEEN 170 and 180;

SELECT
player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position=null;





SELECT
player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE position is null;


--�Ҽ��� �Ｚ�� ���ǰ� Ű�� 170�̻��� ������ ���� �������� ��ȸ
SELECT
 player_name ������, position ������, back_no ��ѹ�, height Ű   
FROM player;


SELECT
  player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
where team_id='K02'
AND height>=170;


--�Ҽ��� �Ｚ������� or �����巡�����̸鼭 �̵��ʴ��� ���
SELECT
    player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
where team_id in ('K02','K07') AND position='MF';



SELECT
    player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
where   team_id='K02' 
    or  team_id='K07' 
    AND position='MF'
    AND height>=170
    AND height<=180;


SELECT
    team_id ��ID,player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
where   (team_id='K02' or  team_id='K07') 
    AND position='MF'
    AND height>=170
    AND height<=180;


SELECT
   team_id ��ID,player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id IN ('K02','K07')
    AND position='MF'
    AND height>=170
    AND height<=180;
    

SELECT
   player_name ������, position ������, back_no ��ѹ�, height Ű
FROM player
WHERE team_id='K02'
    and not position='MF'
    and not height BETWEEN 175 and 185;
    

SELECT
    player_name ������, nation ����
FROM player
WHERE nation is NOT null;
