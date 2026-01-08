# Base de données pédagogique

---

## Description

Dump SQL d'une base de données MySQL destinée à gérer un système pédagogique complet, incluant :

- Cours
- Devoirs
- Élèves
- Formations
- Matières
- Professeurs
- Rendez-vous

Le fichier comprend la structure des tables, des données d'exemple et des contraintes pour garantir l'intégrité référentielle.

---

## Contenu

- Tables principales :  
  - `cours`  
  - `devoirs`  
  - `eleves`  
  - `formations`  
  - `matieres`  
  - `professeurs`  
  - `rdv` (rendez-vous)  
- Clés primaires, clés étrangères et index  
- Données d’exemple pour faciliter les tests  

---

## Installation

Pour importer cette base dans MySQL :


mysql -u utilisateur -p < fichier_dump.sql

ou via phpMyAdmin en important le fichier directement.


## Prérequis

- Serveur MySQL ou MariaDB (version 5.7.11 utilisée pour ce script)  
- phpMyAdmin ou autre outil de gestion de base de données compatible SQL  
- Vérifier que la base `bdd_devoir3` a bien été créée avec toutes les tables et données.

---

## Utilisation

Ce schéma de base de données peut servir pour des projets éducatifs, de gestion d’école ou centre de formation, permettant de gérer les cours, devoirs, élèves, enseignants et rendez-vous associés.

---

## Structure simplifiée des tables principales

| Table                  | Description                                 |
|------------------------|---------------------------------------------|
| `cours`                | Informations sur les cours                   |
| `devoirs`              | Devoirs liés aux cours                       |
| `eleves`               | Liste des élèves                             |
| `eleves_formations`    | Association élèves-formations                |
| `formations`           | Formations disponibles                       |
| `formations_matieres`  | Association formations-matières             |
| `matieres`             | Matières enseignées                          |
| `professeurs`          | Liste des professeurs                        |
| `professeurs_matieres` | Association professeurs-matières             |
| `rdv`                  | Rendez-vous entre élèves, professeurs et matières |

---

## Auteur

Vanessa PAGANOTTO

---

## Licence

Ce projet est sous licence MIT.
