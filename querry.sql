CREATE DATABASE doctor_appointments;
USE doctor_appointments;
CREATE TABLE users (
id INT auto_increment primary KEY,
first_name varchar(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
password_hash VARCHAR(225) NOT NULL,
role ENUM ('patient', 'doctor') NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
CREATE TABLE appointments(
id INT AUTO_INCREMENT PRIMARY KEY,
patient_id INT NOT NULL,
doctor_id INT NOT NULL,
appointment_date DATETIME NOT NULL,
reason VARCHAR(225),
status ENUM ('pending','rejected','approved') DEFAULT 'PENDING',
FOREIGN KEY (patient_id) REFERENCES users(id),
FOREIGN KEY (doctor_id) REFERENCES users(id));
show tables;
select * from users;
select * from appointments;
INSERT INTO users(first_name, last_name, email,password_hash,role) values
('Alice', 'Smith', 'alice@example.com', 'test123','patient'),
('Dr.john','DOE', 'drjohn@exapmle.com','test123','doctor');
