CREATE TABLE CLIENTS ( 
	CLT_ID            	INTEGER NOT NULL PRIMARY KEY auto_increment,
	CLT_NOM           	VARCHAR(50) NOT NULL,
	CLT_PRENOM        	VARCHAR(50) NOT NULL,
	CLT_CODEPOSTAL    	CHAR(5) NOT NULL,
	CLT_VILLE         	VARCHAR(50) NULL,
	CLT_TELEPHONE     	CHAR(14) NULL,
	CLT_PORTABLE      	CHAR(14) NULL,
	CLT_IDGROUPEREMISE	INTEGER DEFAULT NULL NULL 
	)
;
CREATE TABLE COMMANDES ( 
	CDE_ID      	INTEGER NOT NULL PRIMARY KEY auto_increment,
	CDE_DATE    	DATE NOT NULL,
	CDE_TOTALTTC	FLOAT(14,2) NOT NULL,
	CDE_IDCLIENT	INTEGER NOT NULL 
	)
;
CREATE TABLE COMPOSITIONS ( 
	COMP_ID          	INTEGER NOT NULL PRIMARY KEY auto_increment,
	COMP_LIBELLE     	VARCHAR(100) NOT NULL,
	COMP_CODEARTICLE 	VARCHAR(10) NOT NULL,
	COMP_PRIXVENTETTC	FLOAT(14,2) NOT NULL,
	COMP_IDRECETTE   	INTEGER DEFAULT NULL NULL 
	)
;
CREATE TABLE CONCERNER ( 
	CONC_IDCOMMANDE   	INTEGER NOT NULL,
	CONC_IDCOMPOSITION	INTEGER NULL,
	CONC_IDFLEUR      	INTEGER NULL,
	CONC_QUANTITE     	INTEGER NOT NULL 
	)
;
CREATE TABLE CONTENIR ( 
	CONT_IDFLEUR      	INTEGER NULL,
	CONT_IDCOMPOSITION	INTEGER NOT NULL,
	CONT_QUANTITE     	INTEGER NOT NULL 
	)
;
CREATE TABLE FLEURS ( 
	FLR_ID          	INTEGER NOT NULL PRIMARY KEY auto_increment,
	FLR_CODEARTICLE 	VARCHAR(10) NOT NULL,
	FLR_NOM         	VARCHAR(100) NOT NULL,
	FLR_DESCRIPTION 	VARCHAR(4000) NOT NULL,
	FLR_CONSEILS    	VARCHAR(4000) NULL,
	FLR_PRIXVENTETTC	FLOAT(14,2) DEFAULT 0.0 NOT NULL 
	)
;
CREATE TABLE GROUPES_REMISES ( 
	GRP_ID        	INTEGER NOT NULL PRIMARY KEY auto_increment,
	GRP_REFERENCE 	CHAR(1) NOT NULL,
	GRP_LIBELLE   	VARCHAR(50) NOT NULL,
	GRP_TAUXREMISE	FLOAT(5,2) NOT NULL 
	)
;
CREATE TABLE RECETTES ( 
	REC_ID          	INTEGER NOT NULL PRIMARY KEY auto_increment,
	REC_DESCRIPTION 	VARCHAR(4000) NULL,
	REC_DATECREATION	DATE NOT NULL 
	)
;
CREATE TABLE UTILISER ( 
	UTIL_IDFLEUR  	INTEGER NULL,
	UTIL_IDRECETTE	INTEGER NOT NULL,
	UTIL_QUANTITE 	INTEGER NOT NULL 
	)
;

INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(1, 'PATAMOB', 'Adh�mar', '33000', 'BORDEAUX', '05-56-56-56-56', '06-06-06-06-08', 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(2, 'ZEUBLOUSE', 'Agathe', '33000', 'BORDEAUX', '02-41-33-31-18', '06-08-06-08-70', 1)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(3, 'KUZBIDON', 'Alex', '33000', 'BORDEAUX', '05-47-46-58-96', '06-06-06-06-08', NULL)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(4, 'LOCALE', 'Anasthasie', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(5, 'TEUTMARONNE', 'Armand', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(6, 'ZOUDANLKOU', 'Debbie', '33000', 'BORDEAUX', NULL, '06-05-58-89-69', NULL)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(7, 'RIVENBUSSE', 'Elsa', '33000', 'BORDEAUX', '05-45-85-85-96', NULL, 1)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(8, 'ARDELPIC', 'Helmut', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(9, 'VRANTE', 'H�l�na', '33000', 'BORDEAUX', NULL, '06-23-25-65-65', 2)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(10, 'ENFAILLITE', 'M�lusine', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(11, 'EURKETUMEME', 'Odile', '33000', 'BORDEAUX', '08-60-90-90-99', NULL, NULL)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(12, 'HOTDEU;U', 'Olaf', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(13, 'ODLAVIELLE', 'Pac�me', '33000', 'BORDEAUX', NULL, '06-58-56-25-05', 1)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(14, 'AMARTAKALDIRE', 'Quentin', '33000', 'BORDEAUX', NULL, NULL, 2)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(15, 'PEURSCONLA', 'Humphrey', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(16, 'TRAIBIEN', 'Samira', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(17, 'FONFEC', 'Sophie', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(18, 'FAIRANT', 'Teddy', '33000', 'BORDEAUX', NULL, NULL, NULL)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(19, 'BLAIREUR', 'Terry', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(20, 'AJERRE', 'Tex', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(21, 'CHMONFISSE', 'Thierry', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(22, 'PHOTOTETEDEMORT', 'Thomas', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(23, 'KAECOUTE', 'Xavier', '33000', 'BORDEAUX', NULL, NULL, NULL)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(24, 'ADROUILLE-TOULTAN', 'Yves', '33000', 'BORDEAUX', NULL, NULL, 1)
;
INSERT INTO CLIENTS(CLT_ID, CLT_NOM, CLT_PRENOM, CLT_CODEPOSTAL, CLT_VILLE, CLT_TELEPHONE, CLT_PORTABLE, CLT_IDGROUPEREMISE)
  VALUES(25, 'ANCHIER', 'Yvon', '33000', 'BORDEAUX', NULL, NULL, 3)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(1, '2008-09-17', 1348, 2)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(2, '2008-09-17', 10862.5, 5)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(3, '2008-09-17', 72331.84, 4)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(4, '2008-09-17', 1348, 13)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(5, '2008-09-17', 10862.5, 15)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(6, '2008-09-17', 72331.84, 22)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(7, '2008-09-17', 8968, 1)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(8, '2008-09-17', 58882, 8)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(9, '2008-09-17', 64008, 12)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(10, '2008-09-17', 2296, 15)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(11, '2008-09-17', 152633, 16)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(12, '2008-09-17', 16933, 1)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(13, '2008-09-17', 51240, 17)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(14, '2008-09-17', 30, 19)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(15, '2008-09-17', 75, 19)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(16, '2008-09-17', 728, 21)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(17, '2008-09-17', 490, 21)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(18, '2008-09-17', 20, 3)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(19, '2008-09-17', 8200, 10)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(20, '2008-09-17', 5.7, 18)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(21, '2008-09-17', 187.2, 23)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(22, '2008-09-17', 10862.5, 25)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(23, '2008-09-17', 1400, 24)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(24, '2008-09-17', 1152, 7)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(25, '2008-09-17', 3120, 14)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(26, '2008-09-17', 5605, 9)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(27, '2008-09-17', 6785, 20)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(28, '2008-09-17', 10915, 21)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(29, '2008-09-17', 3870, 1)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(30, '2008-09-17', 18615, 17)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(31, '2008-09-17', 19152, 19)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(32, '2008-09-17', 11340, 19)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(33, '2008-09-17', 42775, 21)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(34, '2008-09-17', 28938, 21)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(35, '2008-09-17', 0.8, 11)
;
INSERT INTO COMMANDES(CDE_ID, CDE_DATE, CDE_TOTALTTC, CDE_IDCLIENT)
  VALUES(36, '2008-09-17', 0.82, 6)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(1, '21 Roses Rouges', 'C_RR210001', 14, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(2, '21 Roses Blanches', 'C_RB210001', 15, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(3, '60 Roses Vari�es', 'C_60RV0001', 43, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(4, '60 Roses Vari�es', 'C_60RV0002', 42, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(5, '60 Roses Vari�es', 'C_60RV0003', 42, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(6, '60 Roses Vari�es', 'C_60RV0004', 42, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(7, '60 Roses Vari�es', 'C_60RV0005', 42, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(8, '60 Roses Vari�es', 'C_60RV0006', 42, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(9, 'Safran XXL - 51 Roses jaunes et oranges', 'C_SAF00001', 36, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(10, '60 Roses Equateur Vari�es', 'C_60RVE001', 60, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(11, '60 Roses Equateur Vari�es', 'C_60RVE002', 59, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(12, '60 Roses Equateur Vari�es', 'C_60RVE003', 59, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(13, '60 Roses Equateur Vari�es', 'C_60RVE004', 59, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(14, '60 Roses Equateur Vari�es', 'C_60RVE005', 60, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(15, '60 Roses Equateur Vari�es', 'C_60RVE006', 59, NULL)
;
INSERT INTO COMPOSITIONS(COMP_ID, COMP_LIBELLE, COMP_CODEARTICLE, COMP_PRIXVENTETTC, COMP_IDRECETTE)
  VALUES(16, 'Safran XXL - 51 Roses Equateur jaunes et oranges', 'C_SAFE0001', 51, NULL)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(1, NULL, 3, 1685)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(2, NULL, 6, 9875)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(3, NULL, 9, 64582)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(4, NULL, 3, 1685)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(5, NULL, 6, 9875)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(6, NULL, 9, 64582)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(7, 13, NULL, 152)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(8, 13, NULL, 998)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(9, 4, NULL, 1524)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(10, 1, NULL, 164)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(11, 13, NULL, 2587)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(12, 12, NULL, 287)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(13, 14, NULL, 854)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(14, 2, NULL, 2)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(15, 2, NULL, 5)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(16, 1, NULL, 52)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(17, 1, NULL, 35)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(18, NULL, 4, 25)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(19, NULL, 2, 10000)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(20, NULL, 7, 5)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(21, NULL, 5, 240)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(22, NULL, 10, 9875)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(23, NULL, 9, 1250)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(24, 9, NULL, 32)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(25, 10, NULL, 52)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(26, 11, NULL, 95)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(27, 12, NULL, 115)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(28, 13, NULL, 185)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(29, 2, NULL, 258)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(30, 16, NULL, 365)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(31, 5, NULL, 456)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(32, 2, NULL, 756)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(33, 15, NULL, 725)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(34, 4, NULL, 689)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(35, NULL, 4, 1)
;
INSERT INTO CONCERNER(CONC_IDCOMMANDE, CONC_IDCOMPOSITION, CONC_IDFLEUR, CONC_QUANTITE)
  VALUES(36, NULL, 2, 1)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(1, 4, 30)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(1, 6, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(1, 1, 21)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(1, 5, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(1, 8, 15)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(2, 2, 21)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(3, 3, 30)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(3, 8, 15)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(3, 5, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(3, 7, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(3, 9, 25)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(4, 6, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(4, 3, 30)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(4, 9, 26)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(4, 8, 15)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(5, 7, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(5, 8, 15)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(5, 4, 30)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(5, 6, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(5, 7, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(5, 5, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(6, 13, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(6, 11, 30)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(6, 12, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(6, 15, 15)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(8, 10, 30)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(8, 16, 25)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(8, 15, 15)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(8, 14, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(8, 12, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(9, 14, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(9, 13, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(9, 10, 30)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(9, 15, 15)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(9, 16, 26)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(10, 12, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(10, 15, 15)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(10, 11, 30)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(10, 13, 20)
;
INSERT INTO CONTENIR(CONT_IDFLEUR, CONT_IDCOMPOSITION, CONT_QUANTITE)
  VALUES(10, 14, 20)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(1, 'RROUGE0001', 'Rose Rouge', 'Rose Rouge Locale', NULL, 0.78)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(2, 'RBLANC0001', 'Rose Blanche', 'Rose Blanche Locale', NULL, 0.82)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(3, 'RJAUNE0001', 'Rose Jaune', 'Rose Jaune Locale', NULL, 0.8)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(4, 'RORANGE001', 'Rose Orange', 'Rose Orange Locale', NULL, 0.8)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(5, 'RROSE00001', 'Rose Rose', 'Rose Rose Locale', NULL, 0.78)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(6, 'REROUGE001', 'Rose Equateur Rouge', 'Rose � tr�s gros boutons, class�e comme la plus belle rose du monde', NULL, 1.1)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(7, 'REBLANC001', 'Rose Equateur Blanche', 'Rose � tr�s gros boutons, class�e comme la plus belle rose du monde', NULL, 1.14)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(8, 'REJAUNE001', 'Rose Equateur Jaune', 'Rose � tr�s gros boutons, class�e comme la plus belle rose du monde', NULL, 1.12)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(9, 'REORANGE01', 'Rose Equateur Orange', 'Rose � tr�s gros boutons, class�e comme la plus belle rose du monde', NULL, 1.12)
;
INSERT INTO FLEURS(FLR_ID, FLR_CODEARTICLE, FLR_NOM, FLR_DESCRIPTION, FLR_CONSEILS, FLR_PRIXVENTETTC)
  VALUES(10, 'REROSE0001', 'Rose Equateur Rose', 'Rose � tr�s gros boutons, class�e comme la plus belle rose du monde', NULL, 1.1)
;
INSERT INTO GROUPES_REMISES(GRP_ID, GRP_REFERENCE, GRP_LIBELLE, GRP_TAUXREMISE)
  VALUES(1, 'A', 'Groupe A', 5)
;
INSERT INTO GROUPES_REMISES(GRP_ID, GRP_REFERENCE, GRP_LIBELLE, GRP_TAUXREMISE)
  VALUES(2, 'B', 'Groupe B', 12)
;
INSERT INTO GROUPES_REMISES(GRP_ID, GRP_REFERENCE, GRP_LIBELLE, GRP_TAUXREMISE)
  VALUES(3, 'C', 'Groupe C', 24)
;
ALTER TABLE GROUPES_REMISES
	ADD CONSTRAINT CHK_TAUX
	CHECK (grp_tauxremise BETWEEN 0 AND 50)
;
ALTER TABLE CLIENTS
	ADD CONSTRAINT FK_CLI_GRP
	FOREIGN KEY(CLT_IDGROUPEREMISE)
	REFERENCES GROUPES_REMISES(GRP_ID)
;
ALTER TABLE COMMANDES
	ADD CONSTRAINT FK_CDE_CLT
	FOREIGN KEY(CDE_IDCLIENT)
	REFERENCES CLIENTS(CLT_ID)
;
ALTER TABLE COMPOSITIONS
	ADD CONSTRAINT FK_COMP_REC
	FOREIGN KEY(COMP_IDRECETTE)
	REFERENCES RECETTES(REC_ID)
;
ALTER TABLE CONCERNER
	ADD CONSTRAINT FK_CONC_FLR
	FOREIGN KEY(CONC_IDFLEUR)
	REFERENCES FLEURS(FLR_ID)
;
ALTER TABLE CONCERNER
	ADD CONSTRAINT FK_CONC_COMP
	FOREIGN KEY(CONC_IDCOMPOSITION)
	REFERENCES COMPOSITIONS(COMP_ID)
;
ALTER TABLE CONCERNER
	ADD CONSTRAINT FK_CONC_CDE
	FOREIGN KEY(CONC_IDCOMMANDE)
	REFERENCES COMMANDES(CDE_ID)
;
ALTER TABLE CONTENIR
	ADD CONSTRAINT FK_CONT_FLR
	FOREIGN KEY(CONT_IDFLEUR)
	REFERENCES FLEURS(FLR_ID)
;
ALTER TABLE CONTENIR
	ADD CONSTRAINT FK_CONT_COMP
	FOREIGN KEY(CONT_IDCOMPOSITION)
	REFERENCES COMPOSITIONS(COMP_ID)
;
ALTER TABLE UTILISER
	ADD CONSTRAINT FK_UTIL_REC
	FOREIGN KEY(UTIL_IDRECETTE)
	REFERENCES RECETTES(REC_ID)
;
ALTER TABLE UTILISER
	ADD CONSTRAINT FK_UTIL_FLR
	FOREIGN KEY(UTIL_IDFLEUR)
	REFERENCES FLEURS(FLR_ID)
;
