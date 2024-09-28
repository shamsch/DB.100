-- CREATE TABLE and INSERT INTO statements for monarch table

CREATE TABLE monarch(
id INT NOT NULL,
name VARCHAR(50) NOT NULL,
predecessor_id INT,
PRIMARY KEY (id),
UNIQUE (name),
FOREIGN KEY (predecessor_id) REFERENCES monarch);

INSERT INTO monarch VALUES (1, 'Charles XIV John', NULL);
INSERT INTO monarch VALUES (2, 'Oscar I', 1);
INSERT INTO monarch VALUES (3, 'Charles XV', 2);

--Source: https://en.wikipedia.org/wiki/List_of_Swedish_monarchs, House of Bernadotte (1818-present)

/*
id  name              predecessor_id
--  ----------------  --------------
1   Charles XIV John
2   Oscar I           1
3   Charles XV        2
*/