-- Enable foreign key support
PRAGMA foreign_keys = ON;

-- Create the bike table
CREATE TABLE bike (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    tyre_size INT,
    price DECIMAL(6,2),
    PRIMARY KEY (id)
);

-- Insert data into the bike table
INSERT INTO bike VALUES (1, 'Raptor', 'terrain', 26, 349.00);    
INSERT INTO bike VALUES (2, 'Montauk', 'terrain', 27, 499.00);
INSERT INTO bike VALUES (3, 'Poni', 'city', NULL, 599.00);        
INSERT INTO bike VALUES (4, 'Ainotar', 'city', 28, NULL);
INSERT INTO bike VALUES (5, 'eMotion', 'electric', 26, NULL);
INSERT INTO bike VALUES (6, 'Soma', 'children', 16, 349.00);
INSERT INTO bike VALUES (7, 'Skyride', 'children', 20, 449.00);

-- Create the bike_shop table
CREATE TABLE bike_shop (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL UNIQUE,
    address VARCHAR(255),
    PRIMARY KEY (id)
);

-- Insert data into the bike_shop table
INSERT INTO bike_shop (id, name, address) VALUES (1, 'Downtown Bikes', '123 Main St');
INSERT INTO bike_shop (id, name, address) VALUES (2, 'Cycle World', '456 Elm St');
INSERT INTO bike_shop (id, name, address) VALUES (3, 'City Wheels', '789 Pine St');

-- Create the sells table
CREATE TABLE sells (
    bike_id INT NOT NULL,
    bike_shop_id INT NOT NULL,
    PRIMARY KEY (bike_id, bike_shop_id),
    FOREIGN KEY (bike_id) REFERENCES bike(id),
    FOREIGN KEY (bike_shop_id) REFERENCES bike_shop(id)
);

-- Insert data into the sells table
INSERT INTO sells (bike_id, bike_shop_id) VALUES (1, 1);
INSERT INTO sells (bike_id, bike_shop_id) VALUES (2, 1);
INSERT INTO sells (bike_id, bike_shop_id) VALUES (3, 2);
INSERT INTO sells (bike_id, bike_shop_id) VALUES (4, 3);
INSERT INTO sells (bike_id, bike_shop_id) VALUES (5, 3);
