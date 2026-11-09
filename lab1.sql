CREATE TABLE [Tbl-Mat]{
    [Mat-Id] INT IDENTITY(1,1) NOT NULL,
    [Mat-Matratt] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_Tbl-Mat] PRIMARY KEY ([Mat-Id])  
}

CREATE TABLE [Tbl-Kost]{
    [Kost-Id] int IDENTITY(1,1) NOT NULL,
    [Kost-Innehaller] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_Tbl-Kost] PRIMARY KEY ([Kost-Id])
}
