CREATE Database LoginData;
use LoginData;

DROP TABLE if exists accounts;

CREATE TABLE IF NOT EXISTS accounts (
    `id` INT AUTO_INCREMENT,
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`)
);
INSERT INTO accounts(username, password, email) VALUES
    ('admin','helloworld', 'krishnaeleti@gmail.com'),
    ('admin2', 'helloworld2','kve5@njit.edu');


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