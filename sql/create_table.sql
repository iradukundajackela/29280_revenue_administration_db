CREATE TABLE TAXPAYER(
    taxpayer_id INT PRIMARY KEY,
    taxpayer_tin VARCHAR(20) UNIQUE NOT NULL,
    taxpayer_name VARCHAR(100) NOT NULL,
    taxpayer_type VARCHAR(20)
        CHECK (taxpayer_type IN ('Individual','Company')),
    registration_date DATE DEFAULT CURRENT_DATE
);
CREATE TABLE TAX_CENTRE(
    tax_centre_id INT PRIMARY KEY,
    centre_name VARCHAR(100) NOT NULL,
    district_name VARCHAR(50) NOT NULL,
    centre_manager VARCHAR(100),
    opening_date DATE
);
CREATE TABLE TAX_TYPE(
    tax_type_id INT PRIMARY KEY,
    tax_type_name VARCHAR(100) UNIQUE NOT NULL,
    tax_rate DECIMAL(5,2)
        CHECK(tax_rate>=0),
    filing_frequency VARCHAR(20)
        CHECK(filing_frequency IN ('Monthly','Quarterly','Annually')),
    effective_date DATE
);
CREATE TABLE BANK(
    bank_id INT PRIMARY KEY,
    bank_name VARCHAR(100),
    bank_code VARCHAR(10) UNIQUE,
    branch_name VARCHAR(100),
    registration_date DATE
);
CREATE TABLE TAX_OFFICER(
    officer_id INT PRIMARY KEY,
    tax_centre_id INT NOT NULL,
    officer_name VARCHAR(100),
    officer_position VARCHAR(50),
    employment_date DATE,

    FOREIGN KEY (tax_centre_id)
    REFERENCES TAX_CENTRE(tax_centre_id)
);
CREATE TABLE BUSINESS(
    business_id INT PRIMARY KEY,
    taxpayer_id INT NOT NULL,
    business_name VARCHAR(100),
    business_sector VARCHAR(100),
    opening_date DATE,

    FOREIGN KEY (taxpayer_id)
    REFERENCES TAXPAYER(taxpayer_id)
);
CREATE TABLE PROPERTY(
    property_id INT PRIMARY KEY,
    taxpayer_id INT NOT NULL,
    property_location VARCHAR(150),
    property_value DECIMAL(15,2),
    registration_date DATE,

    FOREIGN KEY (taxpayer_id)
    REFERENCES TAXPAYER(taxpayer_id)
);
CREATE TABLE VEHICLE(
    vehicle_id INT PRIMARY KEY,
    taxpayer_id INT NOT NULL,
    plate_number VARCHAR(20) UNIQUE,
    vehicle_value DECIMAL(15,2),
    registration_date DATE,

    FOREIGN KEY (taxpayer_id)
    REFERENCES TAXPAYER(taxpayer_id)
);
CREATE TABLE TAX_REGISTRATION(
    registration_id INT PRIMARY KEY,
    taxpayer_id INT NOT NULL,
    tax_type_id INT NOT NULL,
    tax_centre_id INT NOT NULL,
    registration_date DATE NOT NULL,

    FOREIGN KEY (taxpayer_id)
        REFERENCES TAXPAYER(taxpayer_id),

    FOREIGN KEY (tax_type_id)
        REFERENCES TAX_TYPE(tax_type_id),

    FOREIGN KEY (tax_centre_id)
        REFERENCES TAX_CENTRE(tax_centre_id)
);
CREATE TABLE TAX_PERIOD(
    tax_period_id INT PRIMARY KEY,
    tax_type_id INT NOT NULL,
    period_start_date DATE NOT NULL,
    period_end_date DATE NOT NULL,
    filing_due_date DATE NOT NULL,

    FOREIGN KEY (tax_type_id)
        REFERENCES TAX_TYPE(tax_type_id),

    CHECK (period_end_date > period_start_date)
);
CREATE TABLE TAX_DECLARATION(
    declaration_id INT PRIMARY KEY,
    registration_id INT NOT NULL,
    tax_period_id INT NOT NULL,
    declaration_date DATE NOT NULL,
    declared_amount DECIMAL(15,2)
        CHECK (declared_amount >=0),

    FOREIGN KEY (registration_id)
        REFERENCES TAX_REGISTRATION(registration_id),

    FOREIGN KEY (tax_period_id)
        REFERENCES TAX_PERIOD(tax_period_id)
);
CREATE TABLE TAX_ASSESSMENT(
    assessment_id INT PRIMARY KEY,
    declaration_id INT NOT NULL,
    officer_id INT NOT NULL,
    assessment_date DATE,
    assessed_amount DECIMAL(15,2)
        CHECK (assessed_amount>=0),

    FOREIGN KEY (declaration_id)
        REFERENCES TAX_DECLARATION(declaration_id),

    FOREIGN KEY (officer_id)
        REFERENCES TAX_OFFICER(officer_id)
);
CREATE TABLE TAX_PAYMENT(
    payment_id INT PRIMARY KEY,
    assessment_id INT NOT NULL,
    bank_id INT NOT NULL,
    payment_date DATE,
    payment_amount DECIMAL(15,2)
        CHECK (payment_amount>=0),

    FOREIGN KEY (assessment_id)
        REFERENCES TAX_ASSESSMENT(assessment_id),

    FOREIGN KEY (bank_id)
        REFERENCES BANK(bank_id)
);
CREATE TABLE PENALTY(
    penalty_id INT PRIMARY KEY,
    assessment_id INT NOT NULL,
    penalty_type VARCHAR(50),
    penalty_amount DECIMAL(15,2)
        CHECK (penalty_amount>=0),
    penalty_date DATE,

    FOREIGN KEY (assessment_id)
        REFERENCES TAX_ASSESSMENT(assessment_id)
);
CREATE TABLE TAX_AUDIT(
    audit_id INT PRIMARY KEY,
    taxpayer_id INT NOT NULL,
    officer_id INT NOT NULL,
    audit_start_date DATE,
    audit_status VARCHAR(30)
        CHECK (audit_status IN ('Open','Closed','In Progress')),

    FOREIGN KEY (taxpayer_id)
        REFERENCES TAXPAYER(taxpayer_id),

    FOREIGN KEY (officer_id)
        REFERENCES TAX_OFFICER(officer_id)
);
CREATE TABLE AUDIT_FINDING(
    finding_id INT PRIMARY KEY,
    audit_id INT NOT NULL,
    tax_type_id INT NOT NULL,
    finding_amount DECIMAL(15,2)
        CHECK (finding_amount>=0),
    finding_date DATE,

    FOREIGN KEY (audit_id)
        REFERENCES TAX_AUDIT(audit_id),

    FOREIGN KEY (tax_type_id)
        REFERENCES TAX_TYPE(tax_type_id)
);
CREATE TABLE TAX_REFUND(
    refund_id INT PRIMARY KEY,
    taxpayer_id INT NOT NULL,
    payment_id INT NOT NULL,
    refund_amount DECIMAL(15,2)
        CHECK (refund_amount>=0),
    refund_date DATE,

    FOREIGN KEY (taxpayer_id)
        REFERENCES TAXPAYER(taxpayer_id),

    FOREIGN KEY (payment_id)
        REFERENCES TAX_PAYMENT(payment_id)
);
CREATE TABLE TAX_OBJECTION(
    objection_id INT PRIMARY KEY,
    assessment_id INT NOT NULL,
    taxpayer_id INT NOT NULL,
    objection_date DATE,
    objection_status VARCHAR(30)
        CHECK (objection_status IN ('Pending','Approved','Rejected')),

    FOREIGN KEY (assessment_id)
        REFERENCES TAX_ASSESSMENT(assessment_id),

    FOREIGN KEY (taxpayer_id)
        REFERENCES TAXPAYER(taxpayer_id)
);
CREATE TABLE ENFORCEMENT_CASE(
    enforcement_id INT PRIMARY KEY,
    taxpayer_id INT NOT NULL,
    officer_id INT NOT NULL,
    case_open_date DATE,
    outstanding_amount DECIMAL(15,2)
        CHECK (outstanding_amount>=0),

    FOREIGN KEY (taxpayer_id)
        REFERENCES TAXPAYER(taxpayer_id),

    FOREIGN KEY (officer_id)
        REFERENCES TAX_OFFICER(officer_id)
);
CREATE TABLE REVENUE_TARGET(
    target_id INT PRIMARY KEY,
    tax_centre_id INT NOT NULL,
    tax_type_id INT NOT NULL,
    target_year INT
        CHECK (target_year>=2020),
    target_amount DECIMAL(15,2)
        CHECK (target_amount>=0),

    FOREIGN KEY (tax_centre_id)
        REFERENCES TAX_CENTRE(tax_centre_id),

    FOREIGN KEY (tax_type_id)
        REFERENCES TAX_TYPE(tax_type_id)
);
