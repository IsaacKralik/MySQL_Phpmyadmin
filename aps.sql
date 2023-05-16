CREATE TABLE Doador (
    cod_doador      INTEGER     PRIMARY KEY AUTOINCREMENT,
    tipo_doador     INTEGER     NOT NULL,
    name_doador     TEXT (70)   NOT NULL,
    telefone_doador INTEGER     NOT NULL,
    email_doador    TEXT (70)   NOT NULL,
    cep_doador      INTEGER (8) NOT NULL,
    end_doador      TEXT (70)   NOT NULL
);


CREATE TABLE Abrigo (
    cod_abrigo           INTEGER      PRIMARY KEY AUTOINCREMENT,
    nome_abrigo          TEXT (70)    NOT NULL,
    cnpj_abrigo          INTEGER (14) NOT NULL,
    telefone_abrigo      INTEGER      NOT NULL,
    email_abrigo         TEXT (70)    NOT NULL,
    quant_pessoas_abrigo INTEGER (5)  NOT NULL,
    cep_abrigo           INTEGER (8)  NOT NULL,
    end_abrigo           TEXT (70)    NOT NULL
);

CREATE TABLE TipoDoador (
    cod_doador  INTEGER      REFERENCES Doador (cod_doador) 
                             PRIMARY KEY,
    tipo_doador INTEGER      REFERENCES Doador (tipo_doador) 
                             NOT NULL,
    cpf_doador  INTEGER (11),
    cnpj_doador INTEGER (14) 
);


CREATE TABLE Doacao (
    cod_doacao        INTEGER PRIMARY KEY AUTOINCREMENT,
    cod_doador        INTEGER REFERENCES Doador (cod_doador) 
                              NOT NULL,
    item_qnt_arroz    INTEGER,
    item_qnt_feijao   INTEGER,
    item_qnt_cafe     INTEGER,
    item_qnt_sal      INTEGER,
    item_qnt_macarrao INTEGER,
    item_qnt_oleo     INTEGER,
    item_qnt_acucar   INTEGER,
    item_qnt_biscoito INTEGER
);


CREATE TABLE Cesta (
    cod_cesta  INTEGER PRIMARY KEY AUTOINCREMENT,
    cod_abrigo INTEGER REFERENCES Abrigo (cod_abrigo) 
);


PRAGMA foreign_keys = 0;

CREATE TABLE sqlitestudio_temp_table AS SELECT *
                                          FROM Doador;

DROP TABLE Doador;

CREATE TABLE Doador (
    cod_doador      INTEGER     PRIMARY KEY AUTOINCREMENT,
    tipo_doador     INTEGER     NOT NULL
                                REFERENCES TipoDoador (tipo_doador),
    name_doador     TEXT (70)   NOT NULL,
    telefone_doador INTEGER     NOT NULL,
    email_doador    TEXT (70)   NOT NULL,
    cep_doador      INTEGER (8) NOT NULL,
    end_doador      TEXT (70)   NOT NULL
);

INSERT INTO Doador (
                       cod_doador,
                       tipo_doador,
                       name_doador,
                       telefone_doador,
                       email_doador,
                       cep_doador,
                       end_doador
                   )
                   SELECT cod_doador,
                          tipo_doador,
                          name_doador,
                          telefone_doador,
                          email_doador,
                          cep_doador,
                          end_doador
                     FROM sqlitestudio_temp_table;

DROP TABLE sqlitestudio_temp_table;

PRAGMA foreign_keys = 1;

