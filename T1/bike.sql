-- Tämä on SQL:n yhden rivin kommentti. This is SQL's single line comment.
-- bike-taulu
-- bike table


CREATE TABLE bike (
id INT NOT NULL,
name VARCHAR(50) NOT NULL,
category VARCHAR(50) NOT NULL,
tyre_size INT,
price DECIMAL (6,2),
PRIMARY KEY (id));

INSERT INTO bike VALUES (1, 'Raptor', 'terrain', 26, 349.00);	
INSERT INTO bike VALUES (2, 'Montauk', 'terrain', 27, 499.00);
INSERT INTO bike VALUES (3, 'Poni', 'city', NULL, 599.00);		
INSERT INTO bike VALUES (4, 'Ainotar', 'city', 28, NULL);
INSERT INTO bike VALUES (5, 'eMotion', 'electric', 26, NULL);
INSERT INTO bike VALUES (6, 'Soma', 'children', 16, 349.00);
INSERT INTO bike VALUES (7, 'Skyride', 'children', 20, 449.00);

/* Tämä on SQL:n monirivinen kommentti.
This is SQL's multi-line comment.
*/

/*
bike
id  name     category  tyre_size  price
--  -------  --------  ---------  -----
1   Raptor   terrain   26         349
2   Montauk  terrain   27         499
3   Poni     city                 599
4   Ainotar  city      28
5   eMotion  electric  26
6   Soma     children  16         349
7   Skyride  children  20         449
*/
