CREATE TABLE PLAYER (
    ID_player NUMBER(10,0) NOT NULL,
    name      VARCHAR2(100) NOT NULL,
    position  VARCHAR2(100),
    BI        VARCHAR2(100),

    Constraint PK_player Primary Key (ID_player)
);


CREATE TABLE HIRED (
    ID_player       NUMBER(10,0) NOT NULL,
    Initial_date    DATE NOT NULL,
    final_date      DATE NOT NULL,

    Constraint PK_Hired Primary key (ID_player, Initial_date),
    Constraint FK_Hired_Ref_Player Foreign key (ID_player)
        references PLAYER(ID_player),
    Constraint CK_Hired CHECK (final_date > Initial_date)
);


ALTER TABLE PLAYER RENAME TO PLAYERS;

ALTER TABLE PLAYERS RENAME TO PLAYER;

ALTER TABLE PLAYER ADD Nickname VARCHAR2(30);

ALTER TABLE PLAYER RENAME COLUMN Nickname TO nickname;

ALTER TABLE PLAYER MODIFY position NUMBER(5,0);

-- DESC PLAYER;

ALTER TABLE PLAYER DROP COLUMN BI CASCADE CONSTRAINTS;


ALTER TABLE HIRED DROP CONSTRAINT FK_Hired_Ref_Player;

DROP TABLE PLAYER;

ALTER TABLE HIRED ADD CONSTRAINT FK_Hired_Ref_Player FOREIGN KEY (ID_player)
    REFERENCES PLAYER(ID_player);

ALTER TABLE HIRED DISABLE CONSTRAINT FK_Hired_Ref_Player;

ALTER TABLE HIRED ENABLE CONSTRAINT FK_Hired_Ref_Player;
