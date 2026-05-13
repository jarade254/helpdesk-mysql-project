CREATE DATABASE helpdesk_db;
USE helpdesk_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    role VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(200),
    description TEXT,
    priority VARCHAR(20),
    status VARCHAR(20) DEFAULT 'Open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (full_name, email, role)
VALUES 
('John Doe', 'john@company.com', 'Employee'),
('Mary Wanjiku', 'mary@company.com', 'IT Support'),
('David Kimani', 'david@company.com', 'Manager');

INSERT INTO tickets (user_id, title, description, priority, status)
VALUES 
(1, 'Laptop not starting', 'Device not powering on', 'High', 'Open'),
(2, 'Email issue', 'Cannot send emails', 'Medium', 'In Progress'),
(3, 'Network slow', 'Internet issue in office', 'High', 'Open');
