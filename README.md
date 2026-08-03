# 29280_revenue_administration_db
to build database of revenue_administration_db

# Revenue Administration Database

##  Project Overview

A PostgreSQL database project designed to manage revenue administration information, including taxpayers, taxes, declarations, assessments, payments, audits, penalties, refunds, and revenue targets.

##  Technologies

- PostgreSQL
- SQL
- GitHub

##  Database Tables

The database contains 20 tables:

- TAXPAYER
- TAX_CENTRE
- TAX_TYPE
- BANK
- TAX_OFFICER
- BUSINESS
- PROPERTY
- VEHICLE
- TAX_REGISTRATION
- TAX_PERIOD
- TAX_DECLARATION
- TAX_ASSESSMENT
- TAX_PAYMENT
- PENALTY
- TAX_AUDIT
- AUDIT_FINDING
- TAX_REFUND
- TAX_OBJECTION
- ENFORCEMENT_CASE
- REVENUE_TARGET

##  Database Design

The project includes:
- Primary and foreign keys
- One-to-many relationships
- Many-to-many relationships
- Referential integrity
- Entity Relationship Diagram (ERD)

### ERD

Add your ERD screenshot here:

![ERD](screenshots/erd.png)

##  SQL Queries

The project demonstrates:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- GROUP BY
- HAVING
- WHERE
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- COALESCE()

## 📸 Query Outputs

Screenshots of the results obtained from the SQL queries are provided below.

### Query 1 Output

![Query 1](screenshoot/query 1.png)

### Query 2 Output

![Query 2](screenshoot/query_2.png)

### Query 3 Output

![Query 3](screenshots/query3.png)

> Add more screenshots following the same format for the remaining queries.

## 📁 Project Structure

```text
revenue-administration-database/
│
├── README.md
├── sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── queries.sql
│
└── screenshots/
    ├── erd.png
    ├── query1.png
    ├── query2.png
    └── query3.png
