Base de données bdd_devoir3


Description : 

Ce dépôt contient le script SQL de création et d'initialisation de la base de données bdd_devoir3. Cette base de données est conçue pour gérer un système de cours, devoirs, élèves, formations, professeurs et rendez-vous associés.

Le script inclut la structure des tables, les contraintes d’intégrité référentielle (clés étrangères), ainsi que des données d'exemple pour chaque table.



Contenu : 

Création de la base bdd_devoir3




Tables principales :


cours : liste des cours avec descriptions et association à une matière

devoirs : devoirs liés aux cours

eleves : informations sur les élèves

eleves_formations : lien entre élèves et formations avec dates

formations : liste des formations disponibles

formations_matieres : association formations - matières

matieres : matières enseignées

professeurs : liste des professeurs

professeurs_matieres : association professeurs - matières

rdv : rendez-vous entre élèves, professeurs et matières





Index et clés primaires/étrangères pour assurer l'intégrité des données : 


Données d'exemple pour chaque table : 

Prérequis : 

Serveur MySQL ou MariaDB (version 5.7.11 utilisée pour ce script)

phpMyAdmin ou autre outil de gestion de base de données compatible SQL




Installation : 

Importer le fichier SQL dans votre serveur de base de données :

mysql -u utilisateur -p < bdd_devoir3.sql


ou via phpMyAdmin en important le fichier directement.




Vérifier que la base bdd_devoir3 a bien été créée avec toutes les tables et données.



Utilisation : 

Ce schéma de base de données peut servir pour des projets éducatifs, de gestion d’école ou centre de formation, permettant de gérer les cours, devoirs, élèves, enseignants et rendez-vous associés.



Structure simplifiée des tables principales : 

Table	Description
cours	Informations sur les cours
devoirs	Devoirs liés aux cours
eleves	Liste des élèves
eleves_formations	Association élèves-formations
formations	Formations disponibles
formations_matieres	Association formations-matières
matieres	Matières enseignées
professeurs	Liste des professeurs
professeurs_matieres	Association professeurs-matières
rdv	Rendez-vous entre élèves, professeurs et matières


Auteur

Vanessa PAGANOTTO (exemple)

Licence

Ce projet est sous licence MIT — voir le fichier LICENSE
 pour plus de détails.
