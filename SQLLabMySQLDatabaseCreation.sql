CREATE DATABASE lab1_cars;


CREATE TABLE lab1_cars.cars(
vin VARCHAR(60),
manufacturer VARCHAR(60),
model VARCHAR(60),
year INT,
color VARCHAR(60));
CREATE TABLE lab1_cars.customers(
cust_id INT,
cust_name VARCHAR(60),
cust_phone_number VARCHAR(60),
cust_email VARCHAR(60),
cust_address VARCHAR(60),
cust_city VARCHAR(60),
cust_state_province VARCHAR(60),
cust_country VARCHAR(60),
cust_zipcode INT);
CREATE TABLE lab1_cars.salespersons(
staff_id INT,
name VARCHAR(60),
store VARCHAR(60));
CREATE TABLE lab1_cars.invoices(
invoice_number INT,
date DATE,
car VARCHAR(60),
customer INT,
salesperson INT,
FOREIGN KEY (car) REFERENCES lab1_cars.cars(vin),
FOREIGN KEY (customer) REFERENCES lab1_cars.customers(cust_id),
FOREIGN KEY (salesperson) REFERENCES lab1_cars.salespersons(staff_id));

USE lab1_cars;

INSERT INTO customers (cust_id, cust_name , cust_email)
VALUES 					(1,'John Doe','johndoe@example.com'),
						(2, 'Jane Smith','janessmith£@example.com');

INSERT INTO cars (vin, manufacturer , year)
VALUES 					('3KD2AS2EF26G1HA20','Volkswagem',2019),
						('3KD2AS2EF26G1HA20', 'Ford',2020) ;
                        
        
