
SELECT
player_name ������,position ��ġ, height Ű, weight ������
FROM player;



SELECT
player_name "���� ��",position "������", height "Ű", weight "������"
FROM player;



SELECT
    player_name "������", height-weight "Ű - ������"
FROM player;



SELECT
player_name "������", round(weight/((height/100)*(height/100)),2) BMI������
FROM player;


SELECT
player_name||'����,'||height||'cm,'||weight||'kg'
FROM player;






