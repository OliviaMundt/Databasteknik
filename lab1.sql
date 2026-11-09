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