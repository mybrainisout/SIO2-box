create database freefly;
use freefly;
create table AVANTAGE
(av_id int not null auto_increment,libelle varchar(50), constraint pk_avantage primary key(av_id));

create table UTILISATEUR
(util_id int not null auto_increment,nom text,prenom text,mail varchar(50),userName varchar(50),motDePass varchar(100),constraint pk_utilisateur primary key(util_id));

create table COMPTE
(compte_id int not null auto_increment,mdp varchar(50),ndc varchar(50),id_util int,id_avantage int,id_emplac int,constraint pk_compte primary key(compte_id));

create table EMPLACEMENT
(emplac_id int not null auto_increment,chemin varchar(50),constraint pk_emplacement primary key(emplac_id));

create table PERIPHERIQUE
(perif_id int not null auto_increment,libelle varchar(50),constraint pk_peripherique primary key(perif_id));

create table SERVER
(serv_id int not null auto_increment,hebergeur varchar(50),stockage varchar(50),constraint pk_server primary key(serv_id));

create table PARTAGE
(partage_id int not null auto_increment,type varchar(50),constraint pk_partage primary key(partage_id));

create table FICHIER
(fich_id int not null auto_increment,taille float,format varchar(50),nom varchar(50),constraint pk_fichier primary key(fich_id));

create table HISTORIQUE
(hist_id int not null auto_increment,version varchar(50),hist_date date,constraint pk_historique primary key(hist_id));

create table EXISTER
(id_emplac int,id_serv int,constraint pk_exister primary key(id_emplac,id_serv));

create table STOCKER
(id_emplac int,id_fich int,constraint pk_stocker primary key(id_emplac,id_fich));

create table PARTAGER
(id_partage int,id_fich int,constraint pk_partager primary key(id_partage,id_fich));

create table RESTAURER
(id_fich int,id_hist int,constraint pk_restaurer primary key(id_fich,id_hist));

alter table COMPTE
add constraint fk_COMPTE_UTILISATEUR foreign key(id_util) references UTILISATEUR(util_id);

alter table COMPTE
add constraint fk_COMPTE_AVANTAGE foreign key(id_avantage) references AVANTAGE(av_id);

alter table COMPTE
add constraint fk_COMPTE_EMPLACEMENT foreign key(id_emplac) references EMPLACEMENT(emplac_id);

alter table EXISTER
add constraint fk_EXISTER_EMPLACEMENT foreign key(id_emplac) references EMPLACEMENT(emplac_id);

alter table EXISTER
add constraint fk_EXISTER_SERVER foreign key(id_serv) references SERVER(serv_id);

alter table STOCKER
add constraint fk_STOCKER_EMPLACEMENT foreign key(id_emplac) references EMPLACEMENT(emplac_id);

alter table STOCKER
add constraint fk_STOCKER_FICHIER foreign key(id_fich) references FICHIER(fich_id);

alter table PARTAGER
add constraint fk_PARTAGER_FICHIER foreign key(id_fich) references FICHIER(fich_id);

alter table PARTAGER
add constraint fk_PARTAGER_PARTAGE foreign key(id_partage) references PARTAGE(partage_id);

alter table RESTAURER
add constraint fk_RESTAURER_FICHIER foreign key(id_fich) references FICHIER(fich_id);

alter table RESTAURER
add constraint fk_RESTAURER_HISTORIQUE foreign key(id_hist) references HISTORIQUE(hist_id);


