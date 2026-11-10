-- egen databas uppgift 1

-- DROP TABLE IF EXISTS tbl_mat_diet;
-- DROP TABLE IF EXISTS tbl_mat;
-- DROP TABLE IF EXISTS tbl_diet;

CREATE TABLE tbl_mat (
    mat_id SERIAL NOT NULL,
    mat_matratt VARCHAR(50) NOT NULL,
    CONSTRAINT pk_tbl_mat PRIMARY KEY (mat_id)
);

CREATE TABLE tbl_diet (
    diet_id SERIAL NOT NULL,
    diet_innehaller VARCHAR(50) NOT NULL,
    CONSTRAINT pk_tbl_diet PRIMARY KEY (diet_id)
);

INSERT INTO tbl_mat (mat_matratt) VALUES
('Köttfärsås'), 
('Linsgryta'), 
('Kalops');

INSERT INTO tbl_diet (diet_innehaller) VALUES 
('Vegetarisk'),
('Veganskt'),
('Laktosfritt');

CREATE TABLE tbl_mat_diet (
    mat_id INT NOT NULL,
    diet_id INT NOT NULL,
    CONSTRAINT pk_tbl_mat_diet PRIMARY KEY (mat_id, diet_id),
    CONSTRAINT fk_mat FOREIGN KEY (mat_id) REFERENCES tbl_mat(mat_id),
    CONSTRAINT fk_diet FOREIGN KEY (diet_id) REFERENCES tbl_diet(diet_id)
);

INSERT INTO tbl_mat_diet (mat_id, diet_id) VALUES
(2, 1),
(2, 2),
(2, 3),
(1, 3),
(3, 3);


-- Testar olika kommandon
UPDATE tbl_mat
SET mat_matratt = 'Hemlagad Köttfärsås'
WHERE mat_id = 1;

SELECT * FROM tbl_diet;
SELECT * FROM tbl_mat WHERE tbl_mat.mat_matratt = 'Linsgryta';



INSERT INTO tbl_mat (mat_matratt) VALUES ('Falukorv och makaroner');
SELECT * FROM tbl_mat;
INSERT INTO tbl_mat_diet (mat_id, diet_id) VALUES
(4, 3);

DELETE FROM tbl_mat
WHERE mat_id = 4;

-- testar referensintegriteten
INSERT INTO tbl_mat_diet (mat_id, diet_id) VALUES (999, 1);


-- northwind uppgift 2
-- 1
SELECT last_name, first_name FROM employees;

--2
SELECT home_phone FROM employees WHERE title = 'Vice President, Sales';

--3 FIXAR EJ DENNA, FRÅGA OM HJÄLP
SELECT company_name, contact_name, contact_title
FROM customers
WHERE company_name = 'Svensk sjöföda AB';

--4
SELECT first_name, last_name, birth_date
FROM employees
ORDER BY birth_date DESC;

--5
SELECT * FROM customers
ORDER BY country, city;

--6
SELECT last_name
FROM employees
WHERE last_name ILIKE '%an%';

--7
SELECT *
FROM employees
WHERE title ILIKE '%Vice%' OR title ILIKE '%President%' OR title ILIKE '%Manager%';

--8
SELECT product_name, unit_price, unit_price * 1.07 AS new_price
FROM products;

--9 ABORT