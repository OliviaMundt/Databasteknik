DROP TABLE IF EXISTS tbl_mat_diet;
DROP TABLE IF EXISTS tbl_mat;
DROP TABLE IF EXISTS tbl_diet;

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

UPDATE tbl_mat
SET mat_matratt = 'Hemlagad Köttfärsås'
WHERE mat_id = 1;

SELECT * FROM tbl_diet;
SELECT * FROM tbl_mat WHERE tbl_mat.mat_matratt = 'Linsgryta';

DELETE FROM tbl_mat
WHERE mat_id = 3;

INSERT INTO tbl_mat (mat_matratt) VALUES ('Falukorv och makaroner');
SELECT * FROM tbl_mat;
INSERT INTO tbl_mat_diet (mat_id, diet_id) VALUES
(4, 3);
