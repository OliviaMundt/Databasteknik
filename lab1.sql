DROP TABLE IF EXISTS tbl_mat;
DROP TABLE IF EXISTS tbl_kost;

CREATE TABLE tbl_mat (
    mat_id SERIAL NOT NULL,
    mat_matratt VARCHAR(50) NOT NULL,
    CONSTRAINT pk_tbl_mat PRIMARY KEY (mat_id)
);

CREATE TABLE tbl_kost (
    kost_id SERIAL NOT NULL,
    kost_innehaller VARCHAR(50) NOT NULL,
    CONSTRAINT pk_tbl_kost PRIMARY KEY (kost_id)
);

INSERT INTO tbl_mat (mat_matratt) VALUES
('Köttfärsås'), 
('Linsgryta'), 
('Kalops');

INSERT INTO tbl_kost (kost_innehaller) VALUES 
('Vegetarisk'),
('Veganskt'),
('Laktosfritt');

CREATE TABLE tbl_mat_kost (
    mat_id INT NOT NULL,
    kost_id INT NOT NULL,
    CONSTRAINT pk_tbl_mat_kost PRIMARY KEY (mat_id, kost_id),
    CONSTRAINT fk_mat FOREIGN KEY (mat_id) REFERENCES tbl_mat(mat_id),
    CONSTRAINT fk_kost FOREIGN KEY (kost_id) REFERENCES tbl_kost(kost_id)
);