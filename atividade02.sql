CREATE DATABASE ATIVIDADE_II;
USE ATIVIDADE_II;

CREATE TABLE MON_MONTADORA(
	MON_ID				INT(13) 	 NOT NULL AUTO_INCREMENT,
	MON_NOME			VARCHAR(20)  NOT NULL,
	MON_CNPJ			INT(20) 	 NOT NULL,
	MON_CIDADE			VARCHAR(25)  NOT NULL,
	MON_ESTADO			VARCHAR(2)   NOT NULL,
	CONSTRAINT MON_PK 	PRIMARY KEY (MON_ID),
	CONSTRAINT MON_UK	UNIQUE		(MON_CNPJ)
	);
	
CREATE TABLE VEI_VEICULO(
	VEI_ID				INT(13)		 NOT NULL AUTO_INCREMENT,
	VEI_MODELO			VARCHAR(25)  NOT NULL,
	VEI_VALOR			DOUBLE(10,2) NOT NULL,
	VEI_CHASSI			INT(15)      NOT NULL,
	MON_ID				INT(13)		 NOT NULL,
	CONSTRAINT VEI_PK	PRIMARY KEY (VEI_ID),
	CONSTRAINT VEI_UK	UNIQUE		(VEI_CHASSI),
	CONSTRAINT VEI_FK	FOREIGN KEY (MON_ID) REFERENCES MON_MONTADORA (MON_ID)
	);