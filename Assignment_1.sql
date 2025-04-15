CREATE TABLE teams (
    team_id       NUMBER PRIMARY KEY,
    team_name     VARCHAR2(50) UNIQUE,
    founded_year  NUMBER CHECK (founded_year > 1900)
);

CREATE TABLE players (
    player_id     NUMBER PRIMARY KEY,
    name          VARCHAR2(100),
    position      VARCHAR2(50),
    birth_year    NUMBER CHECK (birth_year > 1970),
    back_number   NUMBER,
    is_pitcher    CHAR(1) CHECK (is_pitcher IN ('Y','N')),
    team_id       NUMBER REFERENCES teams(team_id)
);

CREATE TABLE stats (
    stat_id       NUMBER PRIMARY KEY,
    player_id     NUMBER REFERENCES players(player_id),의 
    batting_avg   NUMBER(4,3)
);

CREATE SEQUENCE players_seq START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE stats_seq START WITH 1000 INCREMENT BY 1;

INSERT INTO teams VALUES (1, 'KIA 타이거즈', 1982);
INSERT INTO teams VALUES (2, '삼성 라이온즈', 1982);
INSERT INTO teams VALUES (3, 'LG 트윈스', 1990);
INSERT INTO teams VALUES (4, 'SSG 랜더스', 2021);
INSERT INTO teams VALUES (5, 'NC 다이노스', 2011);
INSERT INTO teams VALUES (6, '두산 베어스', 1982);
INSERT INTO teams VALUES (7, 'kt wiz', 2013);
INSERT INTO teams VALUES (8, '롯데 자이언츠', 1982);
INSERT INTO teams VALUES (9, '한화 이글스', 1986);
INSERT INTO teams VALUES (10, '키움 히어로즈', 2008);
INSERT INTO teams VALUES (11, '해태 타이거즈', NULL);
INSERT INTO teams VALUES (12, '빙그레 이글스', NULL);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (1, '김건국', '투수', 1988, 43, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (2, '김규성', '내야(2루수)', 1997, 14, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (3, '김대유', '투수', 1991, 69, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (4, '김도현', '투수', 2000, 60, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (5, '김태군', '포수', 1989, 42, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (6, '나성범', '외야', 1989, 47, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (7, '네일', '투수', 1993, 47, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (8, '박재현', '외야', 2006, 36, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (9, '박정우', '외야', 1998, 15, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (10, '박찬호', '유격수', 1995, 1, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (11, '변우혁', '내야(1,3루수)', 2000, 29, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (12, '서건창', '내야(2루수)', 2000, 58, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (13, '양현종', '투수', 1988, 54, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (14, '오선우', '내야(1루수)', 1996, 56, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (15, '올러', '투수', 1994, 33, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (16, '위즈덤', '내야(3루수)', 1991, 45, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (17, '윤영철', '투수', 2004, 13, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (18, '이우성', '외야', 1994, 25, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (19, '이준영', '투수', 1992, 20, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (20, '이형범', '투수', 1994, 20, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (21, '전상현', '투수', 1996, 51, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (22, '정해영', '투수', 2001, 62, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (23, '조상우', '투수', 1994, 11, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (24, '최원준', '외야', 1994, 11, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (25, '최지민', '투수', 2003, 39, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (26, '최형우', '외야', 1983, 34, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (27, '한승택', '포수', 1994, 26, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (28, '황동하', '투수', 2002, 41, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (29, '곽도규', 'NULL', 2004, 0, 'Y', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (30, '김도영', 'NULL', 2003, 5, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (31, '김선빈', 'NULL', 1989, 3, 'N', 1);

INSERT INTO players (player_id, name, position, birth_year, back_number, is_pitcher, team_id)
VALUES (32, '이의리', 'NULL', 2002, 48, 'Y', 1);

INSERT INTO stats VALUES (stats_seq.NEXTVAL, 1, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 2, 0.205);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 3, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 4, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 5, 0.249);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 6, 0.313);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 7, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 8, 0.150);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 9, 0.265);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 10, 0.261);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 11, 0.260);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 12, 0.297);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 13, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 14, 0.190);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 15, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 16, 0.268);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 17, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 18, 0.265);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 19, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 20, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 21, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 22, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 23, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 24, 0.283);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 25, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 26, 0.310);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 27, 0.207);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 28, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 29, NULL);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 30, 0.312);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 31, 0.306);
INSERT INTO stats VALUES (stats_seq.NEXTVAL, 32, NULL);

SELECT * FROM teams;

SELECT * FROM players;

SELECT * FROM stats;

SELECT s.player_id, p.name, s.batting_avg
FROM stats s
JOIN players p ON s.player_id = p.player_id;

SELECT p.name, p.position, t.team_name, s.batting_avg
FROM players p
JOIN teams t ON p.team_id = t.team_id
JOIN stats s ON p.player_id = s.player_id;

SELECT name FROM players WHERE is_pitcher = 'Y'
UNION
SELECT name FROM players WHERE is_pitcher = 'N';

SELECT p.name, s.batting_avg
FROM players p
JOIN stats s ON p.player_id = s.player_id
WHERE s.batting_avg IS NULL;

SELECT p.name, s.batting_avg
FROM players p
JOIN stats s ON p.player_id = s.player_id
ORDER BY s.batting_avg DESC;

SELECT player_id, name, position
FROM players
WHERE is_pitcher = 'N';

SELECT p.team_id, t.team_name, AVG(s.batting_avg) AS avg_batting_avg
FROM players p
JOIN stats s ON p.player_id = s.player_id
JOIN teams t ON p.team_id = t.team_id
WHERE s.batting_avg IS NOT NULL
GROUP BY p.team_id, t.team_name;
