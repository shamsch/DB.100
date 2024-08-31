CREATE TABLE board_game (
    id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    players VARCHAR(10) NOT NULL,
    ages VARCHAR(5),
    price DECIMAL(4, 2),
    PRIMARY KEY (id),
    UNIQUE (name)
);