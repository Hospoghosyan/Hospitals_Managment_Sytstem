-- Q1: This query retrieves the total revenue for each day in August 2024 
-- from the bill table,formatted by date, including all dates from August 1, 2024,
-- to August 31, 2024. 
-- The results are grouped by each unique day and ordered chronologically.

SELECT 
    TO_CHAR(b.bill_date, 'YYYY-MM-DD') AS Billing_Date,     
    SUM(b.lab_cost + b.med_cost + b.room + b.consult + b.other) AS Total_Revenue 
FROM 
    bill b
WHERE 
    b.bill_date BETWEEN '2024-08-01' AND '2024-08-31' 
GROUP BY 
    TO_CHAR(b.bill_date, 'YYYY-MM-DD')
ORDER BY 
    TO_CHAR(b.bill_date, 'YYYY-MM-DD');


-- Q2: Query to list all doctors who are still working (with end_date as NULL or a future date)

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.role,
    e.department,
	e.end_date
FROM 
    employees e
WHERE 
    e.end_date IS NULL OR e.end_date > CURRENT_DATE;



-- Q3: Query using a CTE to find the average room cost per hospital and list hospitals 
-- where the average is above 800.

WITH avg_room_cost AS (
    SELECT 
        hospital_id,
        AVG(room_cost) AS avg_cost
    FROM 
        rooms
    GROUP BY 
        hospital_id
)
SELECT 
    h.name AS hospital_name,
    arc.avg_cost
FROM 
    hospitals h
JOIN 
    avg_room_cost arc ON h.hospital_id = arc.hospital_id
WHERE 
    arc.avg_cost > 800;


-- Q4: Query to find the number of appointments per doctor along with their specializations

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.specialisation,
    COUNT(a.appointment_id) AS appointment_count
FROM 
    employees e
JOIN 
    appointments a ON e.employee_id = a.doctor_id
GROUP BY 
    e.employee_id, e.first_name, e.last_name, e.specialisation;


-- Q5: Query using a subquery to find the patient with the highest number of admissions

SELECT 
    p.patient_id,
    p.first_name,
    p.last_name,
    (SELECT COUNT(*) FROM admissions a WHERE a.patient_id = p.patient_id) AS admission_count
FROM 
    patients p
ORDER BY 
    admission_count DESC
LIMIT 1;

-- Q6: Query to find the most common diagnosis across all patients

SELECT 
    a.diagnosis,
    COUNT(*) AS frequency
FROM 
    admissions a
GROUP BY 
    a.diagnosis
ORDER BY 
    frequency DESC
LIMIT 1;

-- Q7: Query to list all insurance policies and their associated patient details to label coverage rates

SELECT 
    i.policy_number,
    p.first_name,
    p.last_name,
    i.insurance_provider,
    i.coverage_rate,
    CASE 
        WHEN i.coverage_rate > 80 THEN 'High Coverage'
        WHEN i.coverage_rate BETWEEN 71 AND 80 THEN 'Moderate Coverage'
        ELSE 'Low Coverage'
    END AS coverage_label
FROM 
    insurance i
JOIN 
    patients p ON i.patient_id = p.patient_id;

-- Q8: Query to find total pharmacy revenue per hospital, grouped by the hospital

SELECT 
    h.name AS hospital_name,
    SUM(ph.medicine_price * ph.quantity) AS pharmacy_revenue
FROM 
    hospitals h
JOIN 
    pharmacy ph ON h.hospital_id = ph.hospital_id
GROUP BY 
    h.name;

-- Q9: Query to calculate the average length of stay for patients by hospital

SELECT 
    h.name AS hospital_name,
    ROUND(AVG(a.discharge_date - a.admission_date),2) AS average_length_of_stay
FROM 
    hospitals h
JOIN 
    admissions a ON h.hospital_id = a.hospital_id
GROUP BY 
    h.name;

-- Q10: Query to get the number of prescriptions per doctor and the total quantity of medicines prescribed

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    COUNT(pr.prescription_id) AS number_of_prescriptions,
    SUM(pr.quantity) AS total_medicines_prescribed
FROM 
    employees e
JOIN 
    prescription pr ON e.employee_id = pr.doctor_id
GROUP BY 
    e.employee_id, e.first_name, e.last_name;
