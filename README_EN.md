🇫🇷 [French version available here](README.md)


# Educational Database

## Description

SQL dump of a MySQL database designed to manage a complete educational system, including:

- Courses  
- Assignments  
- Students  
- Training programs  
- Subjects  
- Teachers  
- Appointments

The file includes table structures, sample data, and constraints to ensure referential integrity.


---

## Content

Main tables:

| Table                | Description                                 |
|----------------------|---------------------------------------------|
| `cours`              | Course information                          |
| `devoirs`            | Assignments related to courses              |
| `eleves`             | List of students                            |
| `eleves_formations`  | Student-training program associations       |
| `formations`         | Available training programs                  |
| `formations_matieres`| Training program-subject associations        |
| `matieres`           | Taught subjects                             |
| `professeurs`        | List of teachers                            |
| `professeurs_matieres`| Teacher-subject associations                |
| `rdv`                | Appointments between students, teachers, and subjects |

- Primary keys, foreign keys, and indexes  
- Sample data to facilitate testing

---

## Installation

To import this database into MySQL:

```bash
mysql -u username -p < dump_file.sql

Or via phpMyAdmin by directly importing the file.

---

## Prerequisites

- MySQL or MariaDB server (version 5.7.11 used for this script)  
- phpMyAdmin or another compatible SQL database management tool  
- Verify that the database `bdd_devoir3` has been created with all tables and data

---

## Usage

This database schema can be used for educational projects or school/training center management, allowing management of courses, assignments, students, teachers, and associated appointments.

---

## Author

Vanessa PAGANOTTO

---

## License

This project is licensed under the MIT License.
