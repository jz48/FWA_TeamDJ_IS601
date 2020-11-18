CREATE DATABASE movie;
use movie;

/* CREATE TABLE */
CREATE TABLE IF NOT EXISTS MovieRating(
  `Year` INT(11),
  `Score` DECIMAL(10, 2),
  `Title` VARCHAR(100),
  PRIMARY KEY (`Title`)
);

/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1968, 86, 'Greetings');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1970, 17, 'BloodyMama');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1970, 73, 'Hi,Mom!');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1971, 40, 'BorntoWin');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1973, 98, 'MeanStreets');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1973, 88, 'BangtheDrumSlowly');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1974, 97, 'TheGodfather,PartII');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1976, 41, 'TheLastTycoon');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1976, 99, 'TaxiDriver');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1977, 47, 1900);
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1977, 67, 'NewYork,NewYork');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1978, 93, 'TheDeerHunter');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1980, 97, 'RagingBull');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1981, 75, 'TrueConfessions');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1983, 90, 'TheKingofComedy');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (
    1984, 89, 'OnceUponaTimeinAmerica'
  );
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1984, 60, 'FallinginLove');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1985, 98, 'Brazil');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1986, 65, 'TheMission');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (
    1987, 100, 'DearAmerica:LettersHomeFromVietnam'
  );
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1987, 80, 'TheUntouchables');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1987, 78, 'AngelHeart');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1988, 96, 'MidnightRun');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1989, 64, 'Jacknife');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (
    1989, 47, 'We' reNoAngels ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1990,88,' Awakenings ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1990,29,' Stanley & Iris ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1990,96,' Goodfellas ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1991,76,' CapeFear ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1991,69,' Mistress ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1991,65,' GuiltybySuspicion ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1991,71,' Backdraft ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1992,87,' Thunderheart ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1992,67,' NightandtheCity ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1993,75,' ThisBoy 'sLife'
  );
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1993, 78, 'MadDogandGlory');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1993, 96, 'ABronxTale');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (
    1994, 39, 'MaryShelley' sFrankenstein ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1995,80,' Casino ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1995,86,' Heat ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1996,74,' Sleepers ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1996,38,' TheFan ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 1996,80,' Marvin 'sRoom'
  );
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1997, 85, 'WagtheDog');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1997, 87, 'JackieBrown');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1997, 72, 'CopLand');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1998, 68, 'Ronin');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1998, 38, 'GreatExpectations');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1999, 69, 'AnalyzeThis');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (1999, 43, 'Flawless');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (
    2000, 43, 'TheAdventuresofRocky&Bullwinkle'
  );
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2000, 84, 'MeettheParents');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2000, 41, 'MenofHonor');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2001, 73, 'TheScore');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2001, 33, '15Minutes');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2002, 48, 'CitybytheSea');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2002, 27, 'AnalyzeThat');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2003, 4, 'Godsend');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2004, 35, 'SharkTale');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2004, 38, 'MeettheFockers');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2005, 4, 'TheBridgeofSanLuisRey');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2005, 46, 'Rent');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2005, 13, 'HideandSeek');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2006, 54, 'TheGoodShepherd');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (
    2007, 21, 'ArthurandtheInvisibles'
  );
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2007, 76, 'CaptainShakespeare');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2008, 19, 'RighteousKill');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2008, 51, 'WhatJustHappened?');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (
    2009, 46, 'Everybody' sFine ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 2010,72,' Machete ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 2010,10,' LittleFockers ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 2010,50,' Stone ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 2011,25,' KillerElite ');
/* INSERT QUERY */INSERT INTO MovieRating(Year,Score,Title) VALUES( 2011,7,' NewYear 'sEve'
  );
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2011, 70, 'Limitless');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (
    2012, 92, 'SilverLiningsPlaybook'
  );
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2012, 51, 'BeingFlynn');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2012, 29, 'RedLights');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2013, 46, 'LastVegas');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2013, 7, 'TheBigWedding');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2013, 29, 'GrudgeMatch');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2013, 11, 'KillingSeason');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2014, 9, 'TheBagMan');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2015, 60, 'Joy');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2015, 26, 'Heist');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2015, 61, 'TheIntern');
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title)
VALUES
  (2016, 11, 'DirtyGrandpa');
