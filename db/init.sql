CREATE Database LoginData;
use LoginData;

DROP TABLE if exists accounts;

create table accounts
(
	id int auto_increment,
	username varchar(99) character set utf8 not null,
	password varchar(99) character set utf8 not null,
	email varchar(99) character set utf8 not null,
	constraint accounts_pk
		primary key (id)
);
INSERT INTO accounts (username, password, email) VALUES
    ('admin','helloworld', 'krishnaeleti@gmail.com');

create table MovieRating
(
	Year int not null,
	Score Decimal(10,2) not null,
	Title VARCHAR(100) not null
);
INSERT INTO MovieRating (Year, Score, Title) VALUES
  (1968, 86, 'Greetings'),
  (1970, 17, 'BloodyMama'),
  (1970, 73, 'Hi,Mom!'),
  (1971, 40, 'BorntoWin'),
  (1973, 98, 'MeanStreets'),
  (1973, 88, 'BangtheDrumSlowly'),
  (1974, 97, 'TheGodfather,PartII');