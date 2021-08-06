--TABLE PERSON
--1.
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    age INTEGER,
    height INTEGER,
    city VARCHAR(30),
    favorite_color VARCHAR(15)
);
--2
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('NATHEN', 26, 180, 'GILBERT', 'BLUE'),
('ERIN', 24, 170, 'SUPRISE', 'PURPLE'),
('TIFFANY', 46, 150, 'QUEEN CREEK', 'RED'),
('STEVE', 48, 190, 'SAN TAN VALLEY', 'BLACK'),
('NATALIE', 23, 160, 'MESA', 'GREEN');
--3
SELECT * FROM person
ORDER BY height DESC;
--4
SELECT * FROM person
ORDER BY height ASC;
--5
SELECT * FROM person
ORDER BY age DESC;
--6
SELECT * FROM person
WHERE age > 20;
--7
SELECT * FROM person 
WHERE age = 18;
--8
SELECT * FROM person
WHERE age < 20 
OR age > 30;
--9
SELECT * FROM person
WHERE age != 27
--10
SELECT * FROM person 
WHERE color != 'RED';
--11
SELECT * FROM person 
WHERE favorite_color != 'RED' AND favorite_color != 'BLUE';
--12
SELECT * FROM person
WHERE favorite_color = 'ORANGE' OR favorite_color = 'GREEN';
--13
SELECT * FROM person
WHERE favorite_color IN('ORANGE','GREEN','BLUE');
--14
SELECT * FROM person
WHERE favorite_color IN('YELLOW','PURPLE')

--TABLE ORDERS
--1
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(100),
    product_price FLOAT,
    quantity INTEGER
);
--2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(3, 'PS5', 499.99, 1),
(3, 'XBOX SERIES S', 299.99, 2),
(5, 'HALO INFINITE', 59.99, 1),
(5, 'DUALSENSE CONTROLLER', 69.99, 4),
(5, 'REDBULL', 2.99, 10);
--3
SELECT * FROM orders;
--4
SELECT sum(quantity) FROM orders;
--5
SELECT sum(product_price) FROM orders;
--6
SELECT sum(product_price) FROM orders
WHERE person_id = 5;

--TABLE ARTIST
--1
INSERT INTO artist
(name, artist_id)
VALUES
('Lil Peep', 276),
('Lil Uzi Vert', 277),
('Post Malone', 278);
--2
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;
--3
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;
--4
SELECT * FROM artist
WHERE name LIKE 'Black%';
--5
SELECT * FROM artist
WHERE name LIKE '%Black%';

--TABLE EMPLOYEE
--1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';
--2
SELECT max(birth_date) FROM employee;
--3
SELECT min(birth_date) FROM employee;
--4
SELECT * FROM employee
WHERE reports_to = 2;
--5
SELECT count(employee_id) FROM employee
WHERE city = 'Lethbridge';

--TABLE INVOICE
--1
SELECT count(billing_country) FROM invoice
WHERE billing_country = 'USA';
--2
SELECT max(total) FROM invoice;
--3
SELECT min(total) FROM invoice;
--4
SELECT * FROM invoice
WHERE total > 5;
--5
SELECT count(*) FROM invoice
WHERE total < 5;
--6
SELECT count(*) FROM invoice
WHERE billing_state IN ('CA','TX','AZ');
--7
SELECT avg(total) FROM invoice;
--8
SELECT sum(total) FROM invoice;