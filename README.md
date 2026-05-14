# Helpdesk MySQL Project

A simple MySQL-based Helpdesk Ticketing System designed to simulate a real-world IT support environment.

This project demonstrates:
- Relational database design
- SQL querying
- Ticket management workflows
- Basic reporting structures

---

## 🚀 Features

- User management system
- IT support ticket tracking
- Ticket priority and status handling
- Relational database structure
- SQL JOIN queries for reporting
- Sample helpdesk dataset
- GitHub-hosted SQL project

---

## 🛠 Technologies Used

- MySQL
- MySQL Workbench
- SQL
- Git & GitHub

---

## 📂 Database Structure

### users table
Stores system users and support staff.

| Column | Description |
|---|---|
| user_id | Primary Key |
| full_name | User full name |
| email | User email |
| role | User role |
| created_at | Record timestamp |

---

### tickets table
Stores IT support tickets.

| Column | Description |
|---|---|
| ticket_id | Primary Key |
| user_id | Related user |
| title | Ticket title |
| description | Ticket issue description |
| priority | Ticket priority |
| status | Ticket status |
| created_at | Ticket timestamp |

---

## 📊 Example SQL Query

```sql
SELECT 
    t.ticket_id,
    u.full_name,
    t.title,
    t.priority,
    t.status
FROM tickets t
JOIN users u 
ON t.user_id = u.user_id;
