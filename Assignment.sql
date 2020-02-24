
create database Bidvestbank;

use bidvestbank;

create table BankBranchs (branch_name varchar(50) not null primary key, branch_city varchar(20), assets double);
create table Customer (customer_name varchar(20) not null primary key, customer_street varchar(20),customer_city varchar(50));
create table CustomerAccount (acc_num varchar(6) not null primary key, branch_name varchar(50), balance double);
create table Loan (loan_num varchar(6) not null primary key, branch_name varchar(20), amount double);
create table Depositor (customer_name varchar(20) not null primary key, acc_num varchar(6), FOREIGN KEY (acc_num) REFERENCES CustomerAccount(acc_num));
create table Borrower (customer_name varchar(20) not null primary key, loan_num varchar(6), FOREIGN KEY (loan_num) REFERENCES Loan(loan_num));
create table Employee (employee_name varchar(20) not null primary key, employee_branch varchar(6), salary double);

insert into CustomerAccount values ('A-5324', 'Newtown', 500);
insert into CustomerAccount values ('A-5624', 'Sunnyside', 400);
insert into CustomerAccount values ('A-7794', 'Midrand', 900);
insert into CustomerAccount values ('A-4467', 'Mabopane', 700);
insert into CustomerAccount values ('A-3546', 'Midrand', 750);
insert into CustomerAccount values ('A-3453', 'Universitas', 700);
insert into CustomerAccount values ('A-2542', 'Mamelodi', 350);

insert into BankBranchs values ('Midrand', 'Johannesburg', 7100000);
insert into BankBranchs values ('Newtown', 'Johannesburg', 9000000);
insert into BankBranchs values ('Mabopane', 'Pretoria', 400000);
insert into BankBranchs values ('Belgravia', 'Kimberly', 3700000);
insert into BankBranchs values ('Sunnyside', 'Pretoria', 1700000);
insert into BankBranchs values ('Amanzimtoti', 'Durban', 300000);
insert into BankBranchs values ('Universitas', 'Bloemfontein', 2100000);
insert into BankBranchs values ('Mamelodi', 'Pretoria', 8000000);

insert into Customer values ('Modise', 'Spring', 'George');
insert into Customer values ('Brooks', 'Senator', 'Johannesburg');
insert into Customer values ('Jooste', 'North', 'kimberly');
insert into Customer values ('Lombard', 'Sand Hill', 'Nelspruit');
insert into Customer values ('Mokwena', 'Walnut', 'Port-Elizabeth');
insert into Customer values ('Johnson', 'mmabatho', 'Mafikeng');
insert into Customer values ('Johnson', 'Alma', 'Bloemfontein');
insert into Customer values ('Zwane', 'Main', 'Mafikeng');
insert into Customer values ('Lindsay', 'Park', 'George');
insert into Customer values ('Smith', 'North', 'Kimberly');
insert into Customer values ('Dlamini', 'Putnam', 'Port-Elizabeth');
insert into Customer values ('Williams', 'Nassau', 'Giyane');


insert into Depositor values ('Johnson', 'A-5624');
insert into Depositor values ('Johnson', 'A-5624');
insert into Depositor values ('Johnson', 'A-7794');
insert into Depositor values ('Zwane', 'A-3546');
insert into Depositor values ('Lindsay', 'A-3453');
insert into Depositor values ('Smith', 'A-4467');
insert into Depositor values ('Dlamini', 'A-2542');

insert into Loan values ('L-11', 'Mamelodi', 900);
insert into Loan values ('L-14', 'Newtown', 1500);
insert into Loan values ('L-15', 'Sunnyside', 1500);
insert into Loan values ('L-16', 'Sunnyside', 1300);
insert into Loan values ('L-17', 'Newtown', 1000);
insert into Loan values ('L-23', 'Univertas', 2000);
insert into Loan values ('L-93', 'Mabopane', 500);

insert into Borrower values ('Modise', 'L-16');
insert into Borrower values ('Jooste', 'L-93');
insert into Borrower values ('Johnson', 'L-15');
insert into Borrower values ('Jackson', 'L-14');
insert into Borrower values ('Zwane', 'L-17');
insert into Borrower values ('Smith', 'L-11');
insert into Borrower values ('Smith', 'L-23');
insert into Borrower values ('Williams', 'L-17');

insert into Employee values ('Modise', 'Sunnyside', 1500);
insert into Employee values ('Brown', 'Sunnyside', 1300);
insert into Employee values ('Gopal', 'Sunnyside', 5300);
insert into Employee values ('Johnson', 'Newtown', 1500);
insert into Employee values ('Loreena', 'Newtown', 1300);
insert into Employee values ('Peterson', 'Newtown', 2500);
insert into Employee values ('Rao', 'Austin', 1500);
insert into Employee values ('sato', 'Austin', 1600);

SELECT * FROM CustomerAccount WHERE balance < 700;

SELECT customer_name FROM Customer WHERE customer_city = 'Johannesburg';

SELECT * FROM Employee WHERE salary > 1500 AND employee_branch = 'Newtown';

SELECT AVG(salary) AS "avg_salary" FROM Employee;

SELECT MAX(assets) FROM BankBranchs;

SELECT employee_name FROM Employee WHERE employee_branch = 'Sunnyside';

SELECT * FROM Borrower;

SELECT acc_num FROM CustomerAccount WHERE balance > 900;

SELECT acc_num, balance FROM CustomerAccount WHERE salary > 600 AND branch_name = 'Newtown';

SELECT branch_name, assets FROM BankBranchs;"# mysql-lab-1-vusimkhabela" 
