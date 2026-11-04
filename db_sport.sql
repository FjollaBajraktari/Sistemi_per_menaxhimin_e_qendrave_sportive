CREATE DATABASE IF NOT EXISTS qendra_sportive CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE qendra_sportive;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('Administrator', 'Punonjës', 'Anëtar', 'Trajner') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    phone VARCHAR(30),
    membership_start DATE,
    membership_end DATE,
    status ENUM('Aktiv', 'Skaduar', 'Pezulluar') DEFAULT 'Aktiv',
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE SportsFacilities (
    facility_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    facility_type VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    location VARCHAR(150),
    is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE Trainers (
    trainer_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    specialization VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Activities (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    capacity INT NOT NULL,
    trainer_id INT NULL,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id) ON DELETE SET NULL
);

CREATE TABLE Schedules (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    facility_id INT NULL,
    activity_id INT NULL,
    start_at DATETIME NOT NULL,
    end_at DATETIME NOT NULL,
    status ENUM('Aktiv', 'Anuluar', 'Përfunduar') DEFAULT 'Aktiv',
    FOREIGN KEY (facility_id) REFERENCES SportsFacilities(facility_id) ON DELETE CASCADE,
    FOREIGN KEY (activity_id) REFERENCES Activities(activity_id) ON DELETE CASCADE,
    CHECK (start_at < end_at)
);

CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    schedule_id INT NOT NULL,
    booked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Aktiv', 'Anuluar', 'Përfunduar') DEFAULT 'Aktiv',
    FOREIGN KEY (member_id) REFERENCES Members(member_id) ON DELETE CASCADE,
    FOREIGN KEY (schedule_id) REFERENCES Schedules(schedule_id) ON DELETE CASCADE
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    booking_id INT NULL,
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'EUR',
    method VARCHAR(50) NOT NULL,
    status ENUM('Paguar', 'Në pritje', 'Anuluar') DEFAULT 'Paguar',
    paid_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (member_id) REFERENCES Members(member_id) ON DELETE CASCADE,
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id) ON DELETE SET NULL
);

INSERT INTO Users (full_name, email, password_hash, role) VALUES
('Admin Sistemi', 'admin@qendra.com', '$2y$10$T...shembullHash', 'Administrator'),
('Recepsionist Petrit', 'recepsion@qendra.com', '$2y$10$T...shembullHash', 'Punonjës'),
('Anëtar Klon', 'anetar@qendra.com', '$2y$10$T...shembullHash', 'Anëtar'),
('Trajner Besnik', 'trajner@qendra.com', '$2y$10$T...shembullHash', 'Trajner');

INSERT INTO Members (user_id, phone, membership_start, membership_end, status) VALUES
(3, '+38344123456', '2026-01-01', '2026-12-31', 'Aktiv');

INSERT INTO Trainers (user_id, specialization) VALUES
(4, 'Fitness dhe Bodybuilding');

INSERT INTO SportsFacilities (name, facility_type, capacity, location) VALUES
('Fusha e Futbollit A', 'Fushë e jashtme', 22, 'Sektori Sportiv Kati 1'),
('Salla e Fitnessit', 'Palestër', 40, 'Kati përdhes');

INSERT INTO Activities (name, description, capacity, trainer_id) VALUES
('Crossfit Intensiv', 'Stërvitje grupore për forcë dhe kondicion', 15, 1);

INSERT INTO Schedules (facility_id, activity_id, start_at, end_at, status) VALUES
(2, 1, '2026-11-01 10:00:00', '2026-11-01 11:00:00', 'Aktiv');

INSERT INTO Bookings (member_id, schedule_id, status) VALUES
(1, 1, 'Aktiv');

INSERT INTO Payments (member_id, booking_id, amount, currency, method, status) VALUES
(1, 1, 15.00, 'EUR', 'Cash', 'Paguar');