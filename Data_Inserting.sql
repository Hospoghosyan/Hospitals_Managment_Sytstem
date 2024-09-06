-- Insert sample data into hospitals table
INSERT INTO hospitals (hospital_id, name, location) VALUES
(1, 'City Hospital', 'New York'),
(2, 'General Medical Center', 'Los Angeles'),
(3, 'Health Clinic', 'Chicago');

-- Insert sample data into patients table
INSERT INTO patients (patient_id, first_name, last_name, gender, birth_date, address, place_of_birth, phone_number, email, hospital_id) VALUES
(1, 'John', 'Doe', 'M', '1985-06-15', '123 Elm St', 'New York', '555-0100', 'john.doe@example.com', 1),
(2, 'Jane', 'Smith', 'F', '1990-07-22', '456 Oak St', 'Los Angeles', '555-0101', 'jane.smith@example.com', 2),
(3, 'Robert', 'Brown', 'M', '1975-08-30', '789 Pine St', 'Chicago', '555-0102', 'robert.brown@example.com', 3),
(4, 'Emily', 'Johnson', 'F', '1982-12-05', '101 Maple St', 'New York', '555-0103', 'emily.johnson@example.com', 1),
(5, 'Michael', 'Williams', 'M', '1995-03-12', '202 Birch St', 'Los Angeles', '555-0104', 'michael.williams@example.com', 2),
(6, 'Linda', 'Jones', 'F', '1988-10-20', '303 Cedar St', 'Chicago', '555-0105', 'linda.jones@example.com', 3),
(7, 'James', 'Garcia', 'M', '1992-11-25', '404 Walnut St', 'New York', '555-0106', 'james.garcia@example.com', 1),
(8, 'Sarah', 'Martinez', 'F', '1987-09-15', '505 Elm St', 'Los Angeles', '555-0107', 'sarah.martinez@example.com', 2),
(9, 'David', 'Wilson', 'M', '1979-04-18', '606 Oak St', 'Chicago', '555-0108', 'david.wilson@example.com', 3),
(10, 'Jessica', 'Anderson', 'F', '1993-05-23', '707 Pine St', 'New York', '555-0109', 'jessica.anderson@example.com', 1);

-- Insert sample data into employees table
INSERT INTO employees (employee_id, first_name, last_name, gender, role, department, specialisation, phone_number, start_date, end_date, salary_usd, hospital_id) VALUES
(1, 'Dr. Alice', 'Miller', 'F', 'Cardiologist', 'Cardiology', 'Heart Health', '555-0200', '2015-06-01', NULL, 120000.00, 1),
(2, 'Dr. Bob', 'Wilson', 'M', 'Orthopedic Surgeon', 'Orthopedics', 'Bones and Joints', '555-0201', '2017-01-15', NULL, 130000.00, 2),
(3, 'Dr. Carol', 'Davis', 'F', 'General Practitioner', 'General Medicine', 'Primary Care', '555-0202', '2018-03-20', NULL, 110000.00, 3),
(4, 'Dr. Dan', 'Clark', 'M', 'Pediatrician', 'Pediatrics', 'Childrens Health', '555-0203', '2016-07-10', '2022-12-31', 115000.00, 1),
(5, 'Dr. Eve', 'Brown', 'F', 'Endocrinologist', 'Endocrinology', 'Hormones and Glands', '555-0204', '2019-08-25', NULL, 125000.00, 3),
(6, 'Dr. Frank', 'White', 'M', 'Neurologist', 'Neurology', 'Nervous System', '555-0205', '2020-11-05', NULL, 140000.00, 2),
(7, 'Dr. Grace', 'Moore', 'F', 'Oncologist', 'Oncology', 'Cancer Treatment', '555-0206', '2021-01-01', NULL, 135000.00, 1),
(8, 'Dr. Henry', 'Taylor', 'M', 'Radiologist', 'Radiology', 'Imaging and Diagnostics', '555-0207', '2017-06-15', '2023-05-31', 100000.00, 2),
(9, 'Dr. Irene', 'Johnson', 'F', 'Gastroenterologist', 'Gastroenterology', 'Digestive System', '555-0208', '2016-09-10', NULL, 120000.00, 3),
(10, 'Dr. Jack', 'Lee', 'M', 'Surgeon', 'Surgery', 'Surgical Procedures', '555-0209', '2018-04-15', NULL, 150000.00, 1);

-- Insert sample data into prescription table
INSERT INTO prescription (prescription_id, patient_id, doctor_id, dose_mg, medicine, quantity) VALUES
(1, 1, 1, '500mg', 'Aspirin', 1),
(2, 2, 2, '650mg', 'Tylenol', 2),
(3, 3, 3, '10mg', 'Lipitor', 1),
(4, 4, 1, '1000mg', 'Metformin', 3),
(5, 5, 2, '200mg', 'Ibuprofen', 5),
(6, 6, 3, '20mg', 'Lisinopril', 2),
(7, 7, 1, '250mg', 'Amoxicillin', 4),
(8, 8, 2, '50mg', 'Zoloft', 1),
(9, 9, 3, '5mg', 'Warfarin', 1),
(10, 10, 1, '10mg', 'Cetirizine', 3);

-- Insert sample data into insurance table
INSERT INTO insurance (patient_id, policy_number, insurance_provider, coverage_rate) VALUES
(1, 'POL12345', 'HealthCare Inc.', 80),
(2, 'POL12346', 'CarePlus', 75),
(3, 'POL12347', 'MedLife', 85),
(4, 'POL12348', 'HealthNet', 70),
(5, 'POL12349', 'SecureHealth', 90),
(6, 'POL12350', 'WellCare', 80),
(7, 'POL12351', 'LifeAssure', 85),
(8, 'POL12352', 'OptimalHealth', 78),
(9, 'POL12353', 'CareChoice', 80),
(10, 'POL12354', 'TotalCare', 85);

-- Insert sample data into lab table
INSERT INTO lab (lab_id, hospital_id, patient_id, lab_doctor_id, test_type, test_date, test_result, result_date) VALUES
(1, 1, 1, 1, 'Blood Test', '2024-08-01', 'Normal', '2024-08-02'),
(2, 2, 2, 3, 'X-Ray', '2024-08-03', 'Fracture Detected', '2024-08-04'),
(3, 3, 3, 5, 'Blood Sugar Test', '2024-08-05', 'High', '2024-08-06'),
(4, 1, 4, 1, 'Urine Test', '2024-08-07', 'Normal', '2024-08-08'),
(5, 2, 5, 3, 'Chest X-Ray', '2024-08-09', 'Normal', '2024-08-10'),
(6, 3, 6, 6, 'CT Scan', '2024-08-11', 'Abnormal', '2024-08-12'),
(7, 1, 7, 1, 'MRI', '2024-08-13', 'Normal', '2024-08-14'),
(8, 2, 8, 3, 'Blood Test', '2024-08-15', 'Normal', '2024-08-16'),
(9, 3, 9, 5, 'Ultrasound', '2024-08-17', 'Normal', '2024-08-18'),
(10, 1, 10, 1, 'ECG', '2024-08-19', 'Normal', '2024-08-20');

-- Insert sample data into bill table
INSERT INTO bill (bill_id, patient_id, hospital_id, doctor_id, lab_cost, room, consult, med_cost, other, bill_date) VALUES
(1, 1, 1, 1, 100.00, 500.00, 150.00, 200.00, 50.00, '2024-08-21'),
(2, 2, 2, 2, 200.00, 550.00, 250.00, 300.00, 70.00, '2024-08-22'),
(3, 3, 3, 3, 150.00, 600.00, 180.00, 250.00, 60.00, '2024-08-23'),
(4, 4, 1, 4, 50.00, 700.00, 130.00, 175.00, 40.00, '2024-08-24'),
(5, 5, 2, 5, 120.00, 550.00, 200.00, 275.00, 65.00, '2024-08-25'),
(6, 6, 3, 6, 180.00, 600.00, 220.00, 300.00, 80.00, '2024-08-26'),
(7, 7, 1, 7, 130.00, 500.00, 140.00, 200.00, 55.00, '2024-08-27'),
(8, 8, 2, 8, 160.00, 550.00, 190.00, 230.00, 75.00, '2024-08-28'),
(9, 9, 3, 9, 140.00, 600.00, 210.00, 260.00, 60.00, '2024-08-29'),
(10, 10, 1, 10, 170.00, 700.00, 230.00, 290.00, 85.00, '2024-08-30');

-- Insert sample data into pharmacy table
INSERT INTO pharmacy (pharmacy_id, patient_id, hospital_id, prescription_id, medicine, medicine_price, quantity, policy_number, p_date) VALUES
(1, 1, 1, 1, 'Aspirin', 10.00, 1, 'POL12345', '2024-08-21'),
(2, 2, 2, 2, 'Tylenol', 12.00, 2, 'POL12346', '2024-08-22'),
(3, 3, 3, 3, 'Lipitor', 50.00, 1, 'POL12347', '2024-08-23'),
(4, 4, 1, 4, 'Metformin', 20.00, 3, 'POL12348', '2024-08-24'),
(5, 5, 2, 5, 'Ibuprofen', 8.00, 5, 'POL12349', '2024-08-25'),
(6, 6, 3, 6, 'Lisinopril', 15.00, 2, 'POL12350', '2024-08-26'),
(7, 7, 1, 7, 'Amoxicillin', 25.00, 4, 'POL12351', '2024-08-27'),
(8, 8, 2, 8, 'Zoloft', 60.00, 1, 'POL12352', '2024-08-28'),
(9, 9, 3, 9, 'Warfarin', 40.00, 1, 'POL12353', '2024-08-29'),
(10, 10, 1, 10, 'Cetirizine', 9.00, 3, 'POL12354', '2024-08-30');


-- Insert sample data into manipulation table
INSERT INTO manipulation (manipulation_id, patient_id, hospital_id, man_name, category, cost, man_date, isinsurance) VALUES
(1, 1, 1, 'Heart Surgery', 'Surgical', 15000.00, '2024-08-01', TRUE),
(2, 2, 2, 'Arm Cast', 'Orthopedic', 500.00, '2024-08-03', FALSE),
(3, 3, 3, 'Insulin Pump', 'Diabetes', 2500.00, '2024-08-05', TRUE),
(4, 4, 1, 'Lithotripsy', 'Urology', 3000.00, '2024-08-07', TRUE),
(5, 5, 2, 'Nebulizer', 'Respiratory', 150.00, '2024-08-09', FALSE),
(6, 6, 3, 'Blood Pressure Monitor', 'Cardiology', 200.00, '2024-08-11', TRUE),
(7, 7, 1, 'Antibiotics', 'Pharmacy', 100.00, '2024-08-13', TRUE),
(8, 8, 2, 'Pain Relief Injection', 'Pain Management', 50.00, '2024-08-15', FALSE),
(9, 9, 3, 'Kidney Stone Removal', 'Surgical', 8000.00, '2024-08-17', TRUE),
(10, 10, 1, 'IV Fluids', 'Emergency', 300.00, '2024-08-19', FALSE);


INSERT INTO appointments (appointment_id, patient_id, doctor_id, hospital_id, app_date, app_status, purpose, contact) VALUES
(1, 1, 1, 1, '2024-09-15 10:00:00', 'Scheduled', 'Routine Check-up', '555-1234'),
(2, 2, 2, 1, '2024-09-16 11:00:00', 'Completed', 'Follow-up Visit', '555-5678'),
(3, 3, 3, 2, '2024-09-17 09:30:00', 'Canceled', 'Consultation', '555-8765'),
(4, 4, 4, 3, '2024-09-18 14:00:00', 'Scheduled', 'Specialist Consultation', '555-4321'),
(5, 5, 5, 2, '2024-09-19 08:00:00', 'Completed', 'Routine Check-up', '555-3456'),
(6, 6, 6, 2, '2024-09-20 13:00:00', 'Rescheduled', 'Follow-up Visit', '555-6543'),
(7, 7, 7, 3, '2024-09-21 15:30:00', 'Scheduled', 'Pre-surgery Consultation', '555-7890'),
(8, 8, 8, 1, '2024-09-22 12:00:00', 'Completed', 'Health Screening', '555-0987'),
(9, 9, 9, 1, '2024-09-23 10:30:00', 'No-show', 'Routine Check-up', '555-3214'),
(10,10, 10, 2, '2024-09-24 11:45:00', 'Scheduled', 'Specialist Consultation', '555-5670');


-- Insert sample data into rooms table
INSERT INTO rooms (room_id, hospital_id, room_type, room_cost, room_capacity) VALUES
(1, 1, 'ICU', 1000.00, 2),
(2, 1, 'General', 500.00, 4),
(3, 1, 'Private', 700.00, 1),
(4, 2, 'General', 550.00, 3),
(5, 2, 'Private', 800.00, 2),
(6, 2, 'ICU', 1200.00, 1),
(7, 3, 'General', 600.00, 3),
(8, 3, 'Private', 750.00, 2),
(9, 3, 'ICU', 1100.00, 1),
(10, 1, 'Recovery', 450.00, 2);

-- Insert sample data into admissions table
INSERT INTO admissions (admission_id, patient_id, diagnosis, admission_date, discharge_date, doctor_id, room_id, hospital_id) VALUES
(1, 1, 'Chest Pain', '2024-08-01', '2024-08-05', 1, 10, 1),
(2, 2, 'Fractured Arm', '2024-08-03', '2024-08-10', 2, 4, 2),
(3, 3, 'Diabetes Management', '2024-08-05', '2024-08-15', 3, 8, 3),
(4, 4, 'Kidney Stones', '2024-08-07', '2024-08-12', 4, 2, 1),
(5, 5, 'Asthma Attack', '2024-08-09', '2024-08-14', 5, 6, 2),
(6, 6, 'Hypertension', '2024-08-11', '2024-08-20', 6, 7, 3),
(7, 7, 'Pneumonia', '2024-08-13', '2024-08-18', 7, 3, 1),
(8, 8, 'Back Pain', '2024-08-15', '2024-08-22', 8, 4, 2),
(9, 9, 'Kidney Stones', '2024-08-17', '2024-08-25', 9, 9, 3),
(10, 10, 'Gastroenteritis', '2024-08-19', '2024-08-27', 10, 1, 1);