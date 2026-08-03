INSERT INTO TAXPAYER
(taxpayer_id, taxpayer_tin, taxpayer_name, taxpayer_type, registration_date)
VALUES
(1,'TIN100001','John Niyonzima','Individual','2022-01-15'),
(2,'TIN100002','Alice Mukamana','Individual','2022-02-10'),
(3,'TIN100003','Kigali Traders Ltd','Company','2022-03-05'),
(4,'TIN100004','Eric Habimana','Individual','2022-04-12'),
(5,'TIN100005','Sunrise Construction Ltd','Company','2022-05-20'),
(6,'TIN100006','Grace Uwase','Individual','2022-06-14'),
(7,'TIN100007','Vision Technology Ltd','Company','2022-07-18'),
(8,'TIN100008','Patrick Nsengimana','Individual','2022-08-22'),
(9,'TIN100009','Green Farm Ltd','Company','2022-09-09'),
(10,'TIN100010','Diane Uwera','Individual','2022-10-01');
INSERT INTO TAX_CENTRE
(tax_centre_id, centre_name, district_name, centre_manager, opening_date)
VALUES
(1,'Kigali Tax Centre','Nyarugenge','Jean Claude','2018-01-01'),
(2,'Musanze Tax Centre','Musanze','Alice Mukamana','2019-02-10'),
(3,'Huye Tax Centre','Huye','Patrick Nshimiyimana','2019-06-15'),
(4,'Rubavu Tax Centre','Rubavu','Diane Uwase','2020-01-20'),
(5,'Rusizi Tax Centre','Rusizi','Eric Habimana','2020-08-18'),
(6,'Rwamagana Tax Centre','Rwamagana','Grace Uwera','2021-03-10'),
(7,'Nyagatare Tax Centre','Nyagatare','John Mugisha','2021-06-05'),
(8,'Muhanga Tax Centre','Muhanga','Samuel Karekezi','2022-01-12'),
(9,'Karongi Tax Centre','Karongi','Aline Mukamana','2022-07-22'),
(10,'Kayonza Tax Centre','Kayonza','David Ndayisaba','2023-01-15');
INSERT INTO TAX_TYPE
(tax_type_id, tax_type_name, tax_rate, filing_frequency, effective_date)
VALUES
(1,'Value Added Tax',18.00,'Monthly','2022-01-01'),
(2,'Corporate Income Tax',30.00,'Annually','2022-01-01'),
(3,'Pay As You Earn',30.00,'Monthly','2022-01-01'),
(4,'Withholding Tax',15.00,'Monthly','2022-01-01'),
(5,'Property Tax',1.50,'Annually','2022-01-01'),
(6,'Rental Income Tax',15.00,'Quarterly','2022-01-01'),
(7,'Excise Duty',10.00,'Monthly','2022-01-01'),
(8,'Capital Gains Tax',5.00,'Annually','2022-01-01'),
(9,'Road Tax',2.00,'Annually','2022-01-01'),
(10,'Environmental Levy',3.00,'Quarterly','2022-01-01');
INSERT INTO BANK
(bank_id, bank_name, bank_code, branch_name, registration_date)
VALUES
(1,'Bank of Kigali','BK001','Kigali Main','2020-01-01'),
(2,'Equity Bank','EQ001','Remera','2020-01-01'),
(3,'I&M Bank','IM001','Kicukiro','2020-01-01'),
(4,'Cogebanque','CG001','Muhanga','2020-01-01'),
(5,'GTBank','GT001','Rubavu','2020-01-01'),
(6,'Access Bank','AC001','Musanze','2020-01-01'),
(7,'Ecobank','EC001','Huye','2020-01-01'),
(8,'BPR Bank','BP001','Nyabugogo','2020-01-01'),
(9,'NCBA Bank','NC001','Kimironko','2020-01-01'),
(10,'Development Bank of Rwanda','BRD001','Kigali','2020-01-01');
INSERT INTO TAX_OFFICER
(officer_id, tax_centre_id, officer_name, officer_position, employment_date)
VALUES
(1,1,'Jean Bosco','Senior Officer','2021-01-15'),
(2,2,'Alice Uwimana','Tax Officer','2021-02-10'),
(3,3,'Patrick Niyonsaba','Tax Officer','2021-03-12'),
(4,4,'Eric Habimana','Senior Officer','2021-04-20'),
(5,5,'Diane Mukamana','Tax Officer','2021-05-18'),
(6,6,'Samuel Mugisha','Tax Officer','2021-06-01'),
(7,7,'Grace Uwase','Audit Officer','2021-07-15'),
(8,8,'John Karemera','Tax Officer','2021-08-21'),
(9,9,'Aline Nyirahabimana','Senior Officer','2021-09-05'),
(10,10,'David Ndayisaba','Audit Officer','2021-10-01');
INSERT INTO BUSINESS
(business_id, taxpayer_id, business_name, business_sector, opening_date)
VALUES
(1,1,'Bosco Hardware','Retail','2022-01-10'),
(2,2,'Uwase Fashion','Clothing','2022-02-15'),
(3,3,'Kigali Traders Ltd','Wholesale','2022-03-20'),
(4,4,'Habimana Transport','Transport','2022-04-18'),
(5,5,'Sunrise Construction','Construction','2022-05-22'),
(6,6,'Grace Boutique','Retail','2022-06-15'),
(7,7,'Vision Technology','ICT','2022-07-10'),
(8,8,'Patrick Farm','Agriculture','2022-08-12'),
(9,9,'Green Farm Ltd','Agriculture','2022-09-05'),
(10,10,'Diane Restaurant','Hospitality','2022-10-01');
INSERT INTO PROPERTY
(property_id, taxpayer_id, property_location, property_value, registration_date)
VALUES
(1,1,'Kigali-Nyarugenge',85000000,'2022-01-15'),
(2,2,'Kigali-Kicukiro',65000000,'2022-02-10'),
(3,3,'Gasabo',150000000,'2022-03-12'),
(4,4,'Huye',40000000,'2022-04-15'),
(5,5,'Rubavu',120000000,'2022-05-18'),
(6,6,'Muhanga',50000000,'2022-06-20'),
(7,7,'Musanze',95000000,'2022-07-08'),
(8,8,'Nyagatare',70000000,'2022-08-16'),
(9,9,'Rwamagana',130000000,'2022-09-14'),
(10,10,'Kayonza',60000000,'2022-10-10');
INSERT INTO VEHICLE
(vehicle_id, taxpayer_id, plate_number, vehicle_value, registration_date)
VALUES
(1,1,'RAB101A',25000000,'2022-01-12'),
(2,2,'RAB102B',18000000,'2022-02-14'),
(3,3,'RAB103C',45000000,'2022-03-10'),
(4,4,'RAB104D',22000000,'2022-04-11'),
(5,5,'RAB105E',55000000,'2022-05-15'),
(6,6,'RAB106F',17000000,'2022-06-18'),
(7,7,'RAB107G',40000000,'2022-07-16'),
(8,8,'RAB108H',16000000,'2022-08-14'),
(9,9,'RAB109J',60000000,'2022-09-12'),
(10,10,'RAB110K',20000000,'2022-10-08');
INSERT INTO TAX_REGISTRATION
(registration_id, taxpayer_id, tax_type_id, tax_centre_id, registration_date)
VALUES
(1,1,1,1,'2022-01-20'),
(2,2,3,2,'2022-02-18'),
(3,3,2,3,'2022-03-22'),
(4,4,1,4,'2022-04-20'),
(5,5,2,5,'2022-05-25'),
(6,6,4,6,'2022-06-22'),
(7,7,1,7,'2022-07-20'),
(8,8,5,8,'2022-08-18'),
(9,9,2,9,'2022-09-20'),
(10,10,6,10,'2022-10-15');
INSERT INTO TAX_PERIOD
(tax_period_id, tax_type_id, period_start_date, period_end_date, filing_due_date)
VALUES
(1,1,'2024-01-01','2024-01-31','2024-02-15'),
(2,2,'2024-01-01','2024-12-31','2025-03-31'),
(3,3,'2024-02-01','2024-02-29','2024-03-15'),
(4,4,'2024-03-01','2024-03-31','2024-04-15'),
(5,5,'2024-01-01','2024-12-31','2025-01-31'),
(6,6,'2024-01-01','2024-03-31','2024-04-15'),
(7,7,'2024-04-01','2024-04-30','2024-05-15'),
(8,8,'2024-01-01','2024-12-31','2025-03-31'),
(9,9,'2024-01-01','2024-12-31','2025-01-31'),
(10,10,'2024-04-01','2024-06-30','2024-07-15');
INSERT INTO TAX_DECLARATION
(declaration_id, registration_id, tax_period_id, declaration_date, declared_amount)
VALUES
(1,1,1,'2024-02-10',2500000),
(2,2,3,'2024-03-12',1800000),
(3,3,2,'2025-03-15',12000000),
(4,4,4,'2024-04-12',3200000),
(5,5,5,'2025-01-20',25000000),
(6,6,6,'2024-04-10',1500000),
(7,7,7,'2024-05-12',4200000),
(8,8,9,'2025-01-10',950000),
(9,9,8,'2025-03-10',18000000),
(10,10,10,'2024-07-10',2700000);
INSERT INTO TAX_ASSESSMENT
(assessment_id, declaration_id, officer_id, assessment_date, assessed_amount)
VALUES
(1,1,1,'2024-02-15',2600000),
(2,2,2,'2024-03-15',1900000),
(3,3,3,'2025-03-20',12500000),
(4,4,4,'2024-04-15',3300000),
(5,5,5,'2025-01-25',25500000),
(6,6,6,'2024-04-15',1600000),
(7,7,7,'2024-05-15',4300000),
(8,8,8,'2025-01-15',1000000),
(9,9,9,'2025-03-15',18200000),
(10,10,10,'2024-07-15',2800000);
INSERT INTO TAX_PAYMENT
(payment_id, assessment_id, bank_id, payment_date, payment_amount)
VALUES
(1,1,1,'2024-02-20',2600000),
(2,2,2,'2024-03-20',1800000),
(3,3,3,'2025-03-25',12000000),
(4,4,4,'2024-04-18',3000000),
(5,5,5,'2025-01-28',25000000),
(6,6,6,'2024-04-20',1500000),
(7,7,7,'2024-05-18',4200000),
(8,8,8,'2025-01-18',900000),
(9,9,9,'2025-03-18',18000000),
(10,10,10,'2024-07-20',2700000);
INSERT INTO PENALTY
(penalty_id, assessment_id, penalty_type, penalty_amount, penalty_date)
VALUES
(1,1,'Late Filing',100000,'2024-02-18'),
(2,2,'Late Payment',80000,'2024-03-18'),
(3,3,'Under Declaration',500000,'2025-03-22'),
(4,4,'Late Filing',120000,'2024-04-17'),
(5,5,'Late Payment',600000,'2025-01-30'),
(6,6,'Interest',50000,'2024-04-18'),
(7,7,'Late Filing',150000,'2024-05-18'),
(8,8,'Late Payment',40000,'2025-01-20'),
(9,9,'Under Declaration',700000,'2025-03-20'),
(10,10,'Interest',90000,'2024-07-22');
INSERT INTO TAX_AUDIT
(audit_id, taxpayer_id, officer_id, audit_start_date, audit_status)
VALUES
(1,1,7,'2024-03-01','Closed'),
(2,2,2,'2024-04-05','Open'),
(3,3,3,'2025-01-15','In Progress'),
(4,4,4,'2024-05-10','Closed'),
(5,5,5,'2025-02-01','Open'),
(6,6,6,'2024-06-15','Closed'),
(7,7,7,'2024-07-20','In Progress'),
(8,8,8,'2025-01-12','Open'),
(9,9,9,'2025-03-05','Closed'),
(10,10,10,'2024-08-01','Closed');
INSERT INTO AUDIT_FINDING
(finding_id, audit_id, tax_type_id, finding_amount, finding_date)
VALUES
(1,1,1,250000,'2024-03-10'),
(2,2,3,180000,'2024-04-15'),
(3,3,2,1500000,'2025-01-20'),
(4,4,4,320000,'2024-05-15'),
(5,5,2,2500000,'2025-02-08'),
(6,6,6,200000,'2024-06-20'),
(7,7,1,450000,'2024-07-25'),
(8,8,5,150000,'2025-01-18'),
(9,9,2,1800000,'2025-03-12'),
(10,10,10,300000,'2024-08-10');
INSERT INTO TAX_REFUND
(refund_id, taxpayer_id, payment_id, refund_amount, refund_date)
VALUES
(1,1,1,50000,'2024-02-25'),
(2,2,2,25000,'2024-03-25'),
(3,3,3,500000,'2025-03-30'),
(4,4,4,30000,'2024-04-25'),
(5,5,5,600000,'2025-02-05'),
(6,6,6,20000,'2024-04-28'),
(7,7,7,50000,'2024-05-25'),
(8,8,8,10000,'2025-01-22'),
(9,9,9,700000,'2025-03-25'),
(10,10,10,40000,'2024-07-28');
INSERT INTO TAX_OBJECTION
(objection_id, assessment_id, taxpayer_id, objection_date, objection_status)
VALUES
(1,1,1,'2024-02-28','Approved'),
(2,2,2,'2024-03-28','Rejected'),
(3,3,3,'2025-03-28','Pending'),
(4,4,4,'2024-04-28','Approved'),
(5,5,5,'2025-02-10','Pending'),
(6,6,6,'2024-04-29','Rejected'),
(7,7,7,'2024-05-28','Approved'),
(8,8,8,'2025-01-25','Rejected'),
(9,9,9,'2025-03-28','Pending'),
(10,10,10,'2024-07-30','Approved');
INSERT INTO ENFORCEMENT_CASE
(enforcement_id, taxpayer_id, officer_id, case_open_date, outstanding_amount)
VALUES
(1,1,1,'2024-03-05',100000),
(2,2,2,'2024-04-10',200000),
(3,3,3,'2025-03-25',500000),
(4,4,4,'2024-05-15',150000),
(5,5,5,'2025-02-15',750000),
(6,6,6,'2024-06-18',80000),
(7,7,7,'2024-07-30',300000),
(8,8,8,'2025-01-20',100000),
(9,9,9,'2025-03-30',900000),
(10,10,10,'2024-08-10',120000);
INSERT INTO REVENUE_TARGET
(target_id, tax_centre_id, tax_type_id, target_year, target_amount)
VALUES
(1,1,1,2025,500000000),
(2,2,2,2025,400000000),
(3,3,3,2025,350000000),
(4,4,4,2025,300000000),
(5,5,5,2025,450000000),
(6,6,6,2025,280000000),
(7,7,7,2025,320000000),
(8,8,8,2025,250000000),
(9,9,9,2025,270000000),
(10,10,10,2025,200000000);
