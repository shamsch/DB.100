-- Table creation statements

CREATE TABLE Brand (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(100) UNIQUE,
    country VARCHAR(100)
);

CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) UNIQUE
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    brand_id INT,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);

CREATE TABLE Product_Category (
    product_id INT,
    category_id INT,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE User (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100) UNIQUE,
    birth_year INT
);

CREATE TABLE Evaluation (
    user_id INT,
    product_id INT,
    evaluation_date DATE,
    rating INT,
    review TEXT,
    PRIMARY KEY (user_id, product_id, evaluation_date),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Data insertion statements

-- Insert Categories
INSERT INTO Category (category_id, category_name) VALUES
(1, 'garden'),
(2, 'forest'),
(3, 'snow clearing');

-- Insert Brands
INSERT INTO Brand (brand_id, brand_name, country) VALUES
(1, 'McCee', 'United States'),
(2, 'KooTek', 'Finland');

-- Insert Products
INSERT INTO Product (product_id, product_name, description, price, brand_id) VALUES
(1, 'Grass trimmer TRCee', 'efficient 4-stroke', 179.00, 1),
(2, 'Trimmer line Cee', 'high-class line', 6.99, 1),
(3, 'Chain saw MSCee RR', 'robust and heavy', 559.00, 1),
(4, 'Trimmer line Y', 'all-purpose line', 3.99, 2),
(5, 'Shovel L', 'light general-purpose shovel', 23.95, 2);

-- Insert Product_Category relationships
INSERT INTO Product_Category (product_id, category_id) VALUES
(1, 1), -- Grass trimmer TRCee - garden
(2, 1), -- Trimmer line Cee - garden
(3, 1), -- Chain saw MSCee RR - garden
(3, 2), -- Chain saw MSCee RR - forest
(4, 1), -- Trimmer line Y - garden
(5, 1), -- Shovel L - garden
(5, 3); -- Shovel L - snow clearing

-- Insert Users
INSERT INTO User (user_id, user_name, birth_year) VALUES
(1, 'Anni N', 1985),
(2, 'Juuso K', 1990),
(3, 'Eino U', 1940),
(4, 'Aila J', 1953);

-- Insert Evaluations
INSERT INTO Evaluation (user_id, product_id, evaluation_date, rating, review) VALUES
(1, 1, '2023-06-05', 3, NULL),
(1, 2, '2023-06-13', 2, NULL),
(1, 5, '2023-07-24', 3, NULL),
(1, 4, '2023-08-13', 4, NULL),
(1, 1, '2023-09-12', 5, 'reliable and functioning gadget'),
(3, 1, '2023-06-30', 5, 'excellent'),
(3, 2, '2023-07-02', 2, 'moderately works'),
(2, 5, '2023-06-04', 1, 'rip-off'),
(4, 5, '2023-08-11', 1, 'completely useless');