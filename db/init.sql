CREATE DATABASE movie;
use movie;

/* CREATE TABLE */
CREATE TABLE IF NOT EXISTS MovieRating(
  Year INT(11),
  Score DECIMAL(10, 2),
  Title VARCHAR(100)
);
/* INSERT QUERY */
INSERT INTO MovieRating(Year, Score, Title) VALUES
  (1968, 86, 'Greetings'),
  (1970, 17, 'BloodyMama'),
  (1970, 73, 'Hi,Mom!'),
  (1971, 40, 'BorntoWin'),
  (1973, 98, 'MeanStreets'),
  (1973, 88, 'BangtheDrumSlowly'),
  (1974, 97, 'TheGodfather,PartII'),
  (1976, 41, 'TheLastTycoon'),
  (1976, 99, 'TaxiDriver'),
  (1977, 47, 1900),
  (1977, 67, 'NewYork,NewYork'),
  (1978, 93, 'TheDeerHunter'),
  (1980, 97, 'RagingBull'),
  (1981, 75, 'TrueConfessions'),
  (1983, 90, 'TheKingofComedy'),
  (1984, 89, 'OnceUponaTimeinAmerica'),
  (1984, 60, 'FallinginLove'),
  (1985, 98, 'Brazil'),
  (1986, 65, 'TheMission'),
  (
    1987, 100, 'DearAmerica:LettersHomeFromVietnam'
  ),
  (1987, 80, 'TheUntouchables'),
  (1987, 78, 'AngelHeart'),
  (1988, 96, 'MidnightRun'),
  (1989, 64, 'Jacknife'),
  (
    1989, 47, 'We reNoAngels '),
  ( 1990,88,' Awakenings '),
  ( 1990,29,' Stanley & Iris '),
  ( 1990,96,' Goodfellas '),
  ( 1991,76,' CapeFear '),
  ( 1991,69,' Mistress '),
  ( 1991,65,' GuiltybySuspicion '),
  ( 1991,71,' Backdraft '),
  ( 1992,87,' Thunderheart '),
  ( 1992,67,' NightandtheCity '),
  ( 1993,75,' ThisBoy sLife'
  ),
  (1993, 78, 'MadDogandGlory'),
 
  (1993, 96, 'ABronxTale'),
 
  (
    1994, 39, 'MaryShelley sFrankenstein '),
  ( 1995,80,' Casino '),
  ( 1995,86,' Heat '),
  ( 1996,74,' Sleepers '),
  ( 1996,38,' TheFan '),
  ( 1996,80,' Marvin sRoom'
  ),
 
  (1997, 85, 'WagtheDog'),
 
  (1997, 87, 'JackieBrown'),
 
  (1997, 72, 'CopLand')  ,
 
  (1998, 68, 'Ronin')  ,
 
  (1998, 38, 'GreatExpectations')  ,
 
  (1999, 69, 'AnalyzeThis')  ,
 
  (1999, 43, 'Flawless')  ,
 
  (
    2000, 43, 'TheAdventuresofRocky&Bullwinkle'
  )  ,
 
  (2000, 84, 'MeettheParents')  ,
 
  (2000, 41, 'MenofHonor')  ,
 
  (2001, 73, 'TheScore')  ,
 
  (2001, 33, '15Minutes')  ,
 
  (2002, 48, 'CitybytheSea')  ,
 
  (2002, 27, 'AnalyzeThat')  ,
 
  (2003, 4, 'Godsend')  ,
 
  (2004, 35, 'SharkTale')  ,
 
  (2004, 38, 'MeettheFockers')  ,
 
  (2005, 4, 'TheBridgeofSanLuisRey')  ,
 
  (2005, 46, 'Rent')  ,
 
  (2005, 13, 'HideandSeek')  ,
 
  (2006, 54, 'TheGoodShepherd')  ,
 
  (
    2007, 21, 'ArthurandtheInvisibles'
  )  ,
 
  (2007, 76, 'CaptainShakespeare')  ,
 
  (2008, 19, 'RighteousKill')  ,
 
  (2008, 51, 'WhatJustHappened?')  ,
 
  (
    2009, 46, 'Everybody sFine ')  ,
  ( 2010,72,' Machete ')  ,
  ( 2010,10,' LittleFockers ')  ,
  ( 2010,50,' Stone ')  ,
  ( 2011,25,' KillerElite ')  ,
  ( 2011,7,' NewYear sEve'
  )  ,
 
  (2011, 70, 'Limitless')  ,
 
  (
    2012, 92, 'SilverLiningsPlaybook'
  )  ,
 
  (2012, 51, 'BeingFlynn')  ,
 
  (2012, 29, 'RedLights')  ,
 
  (2013, 46, 'LastVegas')  ,
 
  (2013, 7, 'TheBigWedding')  ,
 
  (2013, 29, 'GrudgeMatch')  ,
 
  (2013, 11, 'KillingSeason')  ,
 
  (2014, 9, 'TheBagMan')  ,
 
  (2015, 60, 'Joy')  ,
 
  (2015, 26, 'Heist')  ,
 
  (2015, 61, 'TheIntern')  ,
 
  (2016, 11, 'DirtyGrandpa');
