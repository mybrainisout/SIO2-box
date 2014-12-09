CREATE DATABASE MyPersonalBank;
USE MyPersonalBank;

/* CREATE TABLE */

CREATE table COMPTE(cpt_id int NOT NULL PRIMARY KEY auto_increment,
cpt_nom varchar(45),
cpt_type varchar(45),
cpt_montant float,
cpt_bnqid int);

CREATE table BANQUE(bnq_id int NOT NULL PRIMARY KEY auto_increment,
bnq_nom varchar(45),
bnq_utlid int);

CREATE table UTILISATEUR(utl_id int NOT NULL PRIMARY Key auto_increment,
utl_nom varchar(45),
utl_motDePasse char(32),
utl_email varchar(255));

CREATE table OPERATION(op_id int NOT NULL PRIMARY KEY auto_increment,
op_montant float,
op_motif text(64),
op_tiers varchar(45),
op_validation boolean,
op_cptid int);

CREATE table TYPE_OPERATION(typOp_id int NOT NULL PRIMARY KEY auto_increment,
typOp_libelle varchar(45),
typOp_opid int);

CREATE table MODE_REGLEMENT(regl_id int NOT NULL PRIMARY KEY auto_increment,
regl_libelle varchar(45),
regl_opid int);

CREATE table TYPE_PLANIFICATION(typPlan_id int NOT NULL PRIMARY KEY auto_increment,
typPlan_libelle varchar(45),
typPlan_opPlanid int);

CREATE table OPERATION_PLANIFIEE(opPlan_id int NOT NULL PRIMARY KEY auto_increment,
opPlan_jour int(31),
opPlan_mois int(12),
opPlan_dateDebut date,
opPlan_dateFin date);

/* ALTER TABLE */

ALTER table BANQUE ADD constraint foreign key (bnq_utlid) references UTILISATEUR (utl_id); 

ALTER table COMPTE ADD constraint foreign key (cpt_bnqid) references BANQUE (bnq_id);

ALTER table OPERATION ADD constraint foreign key (op_cptid) references COMPTE (cpt_id);

ALTER table TYPE_OPERATION ADD constraint foreign key (typOp_opid) references OPERATION (op_id);

ALTER table TYPE_PLANIFICATION ADD constraint foreign key (typPlan_opPlanid) references OPERATION_PLANIFIEE (opPlan_id);

ALTER table MODE_REGLEMENT ADD constraint foreign key (regl_opid) references OPERATION (op_id);

ALTER table OPERATION_PLANIFIEE ADD constraint foreign key (opPlan_id) references OPERATION (op_id);
