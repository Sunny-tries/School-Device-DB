# School Devices Management Project

## Introduction
This project showcases a simple SQL database designed to manage student devices within a school environment. Developed as part of a school assignment, the project demonstrates basic SQL operations without the use of joins or complex database normalization. The database is structured around three main entities: students, devices, and schools, each represented by their respective tables. The primary focus was to track device assignments to students, including assignment and return dates, across multiple schools.

The development process spanned multiple days, reflecting iterative updates to the database schema and data. As a result, some columns and data manipulations are commented out to illustrate the progression and changes made over time.

## Database Structure
### Creation Script: `School-Devices.sql`
The SQL script initiates with the creation of three tables: `STUDENTS`, `DEVICES`, and `SCHOOLS`. Initially, the `STUDENTS` table includes fields for student identification, guardian information, borough, device possession status, and email. Over time, fields related to device assignment and return status were added.

The `DEVICES` table catalogs available devices, detailing their type, memory, and storage capacity. This table was intended to link directly to students, indicating which device is assigned to whom.

The `SCHOOLS` table maintains a list of schools by ID and name, serving as a reference for student enrollment.

Throughout the development, updates and inserts to the tables reflect the assignment of devices to students and their return statuses. These operations are illustrated through a series of `UPDATE` and `INSERT` statements, showing real-life scenarios of device management.

### Query Script: `School-Devices-Queries.sql`
The accompanying query script demonstrates how to extract meaningful information from the database, such as:

- Devices assigned to students at a specific school
- Count of devices assigned by each school
- Details on devices assigned to a particular student
- Identification of students without devices
- Listing of devices not returned by students
- Student counts by borough

These queries serve basic reporting needs for the school administration, providing insights into device distribution and management.

## Project Reflections
This project was a valuable learning experience in managing relational databases and understanding the importance of database normalization. Although the database design was kept simple, adhering only to the first normal form and avoiding joins, it laid a solid foundation for understanding how data can be structured and queried effectively.

The iterative development process, marked by gradual enhancements and data updates, highlights the evolving nature of database design in response to changing requirements or insights gained through initial data manipulation.

Future improvements might include advancing the database normalization to further optimize data integrity and query efficiency, as well as incorporating joins to streamline data retrieval processes.

## Conclusion
The School Devices Management Project exemplifies a practical application of SQL in a real-world scenario. Through this project, foundational skills in database design, data insertion, and querying were developed and applied. This project serves as a stepping stone toward more complex database management tasks and sets the stage for further exploration of SQL capabilities.
