-- Create the hospitals table
CREATE TABLE "hospitals" (
    "hospital_id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "location" VARCHAR(255) NOT NULL,
    PRIMARY KEY ("hospital_id")
);

-- Create the patients table
CREATE TABLE "patients" (
    "patient_id" BIGINT NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "gender" CHAR(1) NOT NULL,
    "birth_date" DATE NOT NULL,
    "address" VARCHAR(255) NOT NULL,
    "place_of_birth" VARCHAR(255) NOT NULL,
    "phone_number" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255),
    "hospital_id" BIGINT NOT NULL,
    PRIMARY KEY ("patient_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id")
);

-- Create the employees table
CREATE TABLE "employees" (
    "employee_id" BIGINT NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "gender" CHAR(1) NOT NULL,
    "role" VARCHAR(255) NOT NULL,
    "department" VARCHAR(255) NOT NULL,
    "specialisation" VARCHAR(255) NOT NULL,
    "phone_number" VARCHAR(255) NOT NULL,
    "start_date" DATE NOT NULL,
    "end_date" DATE,
    "salary_usd" FLOAT(53) NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    PRIMARY KEY ("employee_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id")
);

-- Create the rooms table
CREATE TABLE "rooms" (
    "room_id" BIGINT NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    "room_type" VARCHAR(255) NOT NULL,
    "room_cost" FLOAT(53) NOT NULL,
    "room_capacity" INTEGER NOT NULL,
    PRIMARY KEY ("room_id", "hospital_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id")
);

-- Create the prescription table
CREATE TABLE "prescription" (
    "prescription_id" BIGINT NOT NULL,
    "patient_id" BIGINT NOT NULL,
    "doctor_id" BIGINT NOT NULL,
    "dose_mg" VARCHAR(255) NOT NULL,
    "medicine" VARCHAR(255) NOT NULL,
    "quantity" INTEGER NOT NULL,
    PRIMARY KEY ("prescription_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id"),
    FOREIGN KEY ("doctor_id") REFERENCES "employees"("employee_id")
);

-- Create the insurance table with a unique constraint on policy_number
CREATE TABLE "insurance" (
    "patient_id" BIGINT NOT NULL,
    "policy_number" VARCHAR(255) NOT NULL UNIQUE,  -- Add UNIQUE constraint here
    "insurance_provider" VARCHAR(255) NOT NULL,
    "coverage_rate" INTEGER NOT NULL,
    PRIMARY KEY ("patient_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id")
);

-- Create the lab table
CREATE TABLE "lab" (
    "lab_id" BIGINT NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    "patient_id" BIGINT NOT NULL,
    "lab_doctor_id" BIGINT NOT NULL,
    "test_type" VARCHAR(255) NOT NULL,
    "test_date" DATE NOT NULL,
    "test_result" VARCHAR(255) NOT NULL,
    "result_date" DATE NOT NULL,
    PRIMARY KEY ("lab_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id"),
    FOREIGN KEY ("lab_doctor_id") REFERENCES "employees"("employee_id")
);

-- Create the bill table
CREATE TABLE "bill" (
    "bill_id" BIGINT NOT NULL,
    "patient_id" BIGINT NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    "doctor_id" BIGINT NOT NULL,
    "lab_cost" FLOAT(53) NOT NULL,
    "room" FLOAT(53) NOT NULL,
    "consult" FLOAT(53) NOT NULL,
    "med_cost" FLOAT(53) NOT NULL,
    "other" FLOAT(53) NOT NULL,
    "bill_date" DATE NOT NULL,
    PRIMARY KEY ("bill_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id"),
    FOREIGN KEY ("doctor_id") REFERENCES "employees"("employee_id")
);

-- Create the pharmacy table
CREATE TABLE "pharmacy" (
    "pharmacy_id" BIGINT NOT NULL,
    "patient_id" BIGINT NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    "prescription_id" BIGINT,
    "medicine" VARCHAR(255) NOT NULL,
    "medicine_price" FLOAT(53) NOT NULL,
    "quantity" INTEGER NOT NULL,
    "policy_number" VARCHAR(255) NOT NULL,
    "p_date" DATE NOT NULL,
    PRIMARY KEY ("pharmacy_id"),
    FOREIGN KEY ("prescription_id") REFERENCES "prescription"("prescription_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id"),
    FOREIGN KEY ("policy_number") REFERENCES "insurance"("policy_number")  -- Now references a unique key
);

-- Create the admissions table
CREATE TABLE "admissions" (
    "admission_id" BIGINT NOT NULL,
    "patient_id" BIGINT NOT NULL,
    "diagnosis" VARCHAR(255) NOT NULL,
    "admission_date" DATE NOT NULL,
    "discharge_date" DATE NOT NULL,
    "doctor_id" BIGINT NOT NULL,
    "room_id" BIGINT NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    PRIMARY KEY ("admission_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id"),
    FOREIGN KEY ("doctor_id") REFERENCES "employees"("employee_id"),
    FOREIGN KEY ("room_id", "hospital_id") REFERENCES "rooms"("room_id", "hospital_id")
);

-- Create the suppliers table
CREATE TABLE "suppliers" (
    "supplier_id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "contact" VARCHAR(255) NOT NULL,
    "country" VARCHAR(255) NOT NULL,
    PRIMARY KEY ("supplier_id")
);

-- Create the inventory table
CREATE TABLE "inventory" (
    "inventory_id" BIGINT NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "category" VARCHAR(255) NOT NULL,
    "price" FLOAT(53) NOT NULL,
    "quantity" INTEGER NOT NULL,
    "supplier_id" BIGINT NOT NULL,
    "import_date" DATE NOT NULL,
    PRIMARY KEY ("inventory_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id"),
    FOREIGN KEY ("supplier_id") REFERENCES "suppliers"("supplier_id")
);

-- Create the medical_history table
CREATE TABLE "medical_history" (
    "history_id" BIGINT NOT NULL,
    "patient_id" BIGINT NOT NULL,
    "blood_type" VARCHAR(255) NOT NULL,
    "allergy" VARCHAR(255) NOT NULL,
    "diagnosis" VARCHAR(255) NOT NULL,
    "condition_name" VARCHAR(255) NOT NULL,
    PRIMARY KEY ("history_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id")
);

-- Create the appointments table
CREATE TABLE "appointments" (
    "appointment_id" BIGINT NOT NULL,
    "patient_id" BIGINT NOT NULL,
    "doctor_id" BIGINT NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    "app_date" DATE NOT NULL,
    "app_status" VARCHAR(255) NOT NULL,
    "purpose" VARCHAR(255) NOT NULL,
    "contact" VARCHAR(255) NOT NULL,
    PRIMARY KEY ("appointment_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id"),
    FOREIGN KEY ("doctor_id") REFERENCES "employees"("employee_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id")
);

-- Create the manipulation table
CREATE TABLE "manipulation" (
    "manipulation_id" BIGINT NOT NULL,
    "patient_id" BIGINT NOT NULL,
    "hospital_id" BIGINT NOT NULL,
    "man_name" VARCHAR(255) NOT NULL,
    "category" VARCHAR(255) NOT NULL,
    "cost" FLOAT(53) NOT NULL,
    "man_date" DATE NOT NULL,
    "isinsurance" BOOLEAN NOT NULL,
    PRIMARY KEY ("manipulation_id"),
    FOREIGN KEY ("hospital_id") REFERENCES "hospitals"("hospital_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients"("patient_id")
);