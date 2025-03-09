-- Use the database
USE lab_mysql;

-- Drop tables if they exist (to avoid errors when rerunning the script)
DROP TABLE IF EXISTS invoice;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS saleperson;

-- Create the Salesperson table
CREATE TABLE saleperson (
    saleperson_id INT PRIMARY KEY, 
    first_name VARCHAR(20) NOT NULL, 
    last_name VARCHAR(20) NOT NULL, 
    store_name VARCHAR(40) NOT NULL
);

-- Create the Customer table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY, 
    first_name VARCHAR(20) NOT NULL, 
    last_name VARCHAR(20) NOT NULL, 
    email VARCHAR(30) UNIQUE NOT NULL, 
    phone VARCHAR(20), 
    address TEXT, 
    city VARCHAR(30) NOT NULL, 
    state VARCHAR(30) NOT NULL, 
    country VARCHAR(20) NOT NULL, 
    zip_code INT
);

-- Create the Car table
CREATE TABLE car (
    car_id INT PRIMARY KEY, 
    vin VARCHAR(17) UNIQUE NOT NULL, 
    manufacturer VARCHAR(40) NOT NULL, 
    model VARCHAR(50) NOT NULL, 
    year YEAR NOT NULL, 
    color VARCHAR(30) NOT NULL
);

-- Create the Invoice table
CREATE TABLE invoice (
    invoice_id INT PRIMARY KEY, 
    date DATE NOT NULL, 
    customer_customer_id INT, 
    car_car_id INT, 
    saleperson_saleperson_id INT, 
    INDEX `fk_invoice_saleperson_idx` (`saleperson_saleperson_id` ASC) VISIBLE,
    INDEX `fk_invoice_car_idx` (`car_car_id` ASC) VISIBLE,
    INDEX `fk_invoice_customer_idx` (`customer_customer_id` ASC) VISIBLE,
    CONSTRAINT `fk_invoice_customer_idx`
        FOREIGN KEY (customer_customer_id) REFERENCES customer(customer_id) ON DELETE NO ACTION ON UPDATE NO ACTION, 
    CONSTRAINT `fk_invoice_car_idx`
        FOREIGN KEY (car_car_id) REFERENCES car(car_id) ON DELETE NO ACTION ON UPDATE NO ACTION, 
    CONSTRAINT `fk_invoice_saleperson_idx`
        FOREIGN KEY (saleperson_saleperson_id) REFERENCES saleperson(saleperson_id) ON DELETE SET NULL ON UPDATE NO ACTION
);
