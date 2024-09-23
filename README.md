# Hospital Management System Database
## Project Overview
The Hospital Management System Database is designed using PostgreSQL to manage hospital-related data,such as hospitals, patients, employees, rooms, prescriptions, and more. This relational database ensures data integrity, supports efficient querying, and is adaptable to future needs. The system provides a centralized structure for hospital operations, making it easier to manage and retrieve critical information.

## Key Features
* __Schema Design__: A comprehensive schema defining relationships between hospitals, patients, employees, rooms, prescriptions, etc.
* __Data Integrity__: Primary and foreign key constraints enforce referential integrity and maintain relationships.
* __Sample Data__: Simulated real-life hospital scenarios with 10 rows per table, and 1-3 rows for hospitals.
* __Querying__: SQL queries to retrieve, manipulate, and test the relationships between various entities.
  
## Database Components
The database comprises tables for the following entities:

* __Hospitals__: Central directory of all hospitals, their details, and associated data.
* __Patients__: Comprehensive information about each patient, including personal and contact details.
* __Employees__: Staff details, including doctors, nurses, and administrative personnel.
* __Rooms__: Room allocations, types, costs, and capacities for patient admissions.
* __Prescriptions__: Records of medical prescriptions, linked to patients and prescribing doctors.
* __Insurance__: Patients' insurance information, policy numbers, and coverage details.
* __Lab Tests__: Information about lab tests, including test results, dates, and responsible doctors.
* __Billing__: Complete billing records, covering services like room charges, consultations, and medications.
* __Pharmacy__: Details of medicines dispensed to patients, linked to prescriptions.
* __Admissions__: Information on patient admissions, diagnosis, and hospital stay details.
* __Medical History__: Comprehensive records of patients’ past medical conditions, treatments, allergies, and diagnoses.
* __Manipulations__: Tracks medical procedures or interventions performed on patients, including the cost and date of the procedure.
* __Appointments__: Details about scheduled appointments, including dates, purposes, and statuses.
* __Inventory__: Information about medical and hospital supplies, including item name, quantity, price, and associated supplier.
* __Suppliers__: Directory of suppliers providing goods and services to hospitals, including contact information and countries of operation.

For a full description of each table, refer to the Hospital Management Database Schema Documentation.

## Diagram
Refer to the provided hospitals_diagram.png to visualize the database schema.
![hospitals_diagram](https://github.com/user-attachments/assets/e3598a8c-1ba3-461e-85f0-515ab39196c5)

## Files Included
* __Tables_Creation.sql__: SQL script to create all the tables.
* __Data_Inserting.sql__: Sample data for each table.
* __queries.sql:__ A set of SQL queries to validate database functionality.
* __hospitals_diagram.png__: Visual diagram of the database schema.
* __Hospital Management Database Schema Documentation.docx__: Detailed documentation of the database tables and their purposes.


