DROP TABLE IF EXISTS `Alunos`;
CREATE TABLE IF NOT EXISTS `Alunos` (
    `Nr_Rgm`        INT(8)      NOT NULL AUTO_INCREMENT,
    `Nm_Nome`       VARCHAR(40) NOT NULL,
    `Nm_Pai`        VARCHAR(40),
    `Nm_Mae`        VARCHAR(40) NOT NULL,
    `Dt_Nascimento` DATE        NOT NULL,
    `Id_Sexo`       CHAR(1),

    PRIMARY KEY `Pk_Alunos` (`Nr_Rgm`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;


DROP TABLE IF EXISTS `Classe`;
CREATE TABLE IF NOT EXISTS `Classe` (
    `Cd_Classe`    INT(8)     NOT NULL AUTO_INCREMENT,
    `Nr_AnoLetivo` INT(4)     NOT NULL,
    `Nr_Serie`     INT(2)     NOT NULL,
    `Sg_Turma`     VARCHAR(2) NOT NULL,
    `Cd_Escola`    INT(6)     NOT NULL,
    `Cd_Grau`      INT(2)     NOT NULL,
    `Cd_Periodo`   INT(2)     NOT NULL,

    PRIMARY KEY `Pk_Classe` (`Cd_Classe`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `Matricila`;
CREATE TABLE IF NOT EXISTS `Matricila` (
    `Nr_Rgm`       INT(8) NOT NULL,
    `Cd_Classe`    INT(8) NOT NULL,
    `Dt_Matricula` DATE   NOT NULL,

    PRIMARY KEY `Pk_matricila` (`Nr_Rgm`, `Cd_Classe`),
    FOREIGN KEY `Nr_Rgm_Fk` (`Nr_Rgm`) REFERENCES `Alunos` (`Nr_Rgm`),
    FOREIGN KEY `Cd_Classe_Fk` (`Cd_Classe`) REFERENCES `Classe` (`Cd_Classe`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

