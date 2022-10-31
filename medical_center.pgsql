DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(45) NOT NULL
);


CREATE TABLE patients
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(45) NOT NULL
);

CREATE TABLE visits
(
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients ON DELETE CASCADE,
    doctor_id INTEGER REFERENCES patients ON DELETE SET NULL
);

CREATE TABLE diseases
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(45) NOT NULL
);

CREATE TABLE diagnoses
(
    id SERIAL PRIMARY KEY,
    visit_id INTEGER REFERENCES visits ON DELETE CASCADE,
    disease_id INTEGER REFERENCES diseases ON DELETE SET NULL
);

