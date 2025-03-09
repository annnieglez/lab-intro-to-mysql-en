insert into car(car_id, vin, manufacturer, model, year, color)
values 
('0', '3K096I98581DHSNUP', 'Volkswagen','Tiguan', '2019','Blue'),
('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot','Rifter', '2019', 'Red'),
('2', 'RKXVNNIHLVVZOUB4M', 'Ford','Fusion', '2019', 'White'),
('3', 'HKNDGS7CU31E9Z7JW', 'Toyota','RAV4', '2019', 'Silver'),
('4', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
('5', 'DAM41UDN3CHU2WVF7', 'Volvo','V60 Cross Country', '2019', 'Gray');


insert into customer(customer_id, first_name, last_name, email, phone, address, city, state, country, zip_code)
values 
('10001', 'Pablo' ,'Picasso', 'test@test', '+34 636 17 63 82', 'Paseo de la Chope', 'Madrid', 'Madrid', 'Spain', 28045),
('20001', 'Abraham', 'Lincoln', 'test1@test', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
('30001', 'Napoleon', 'Bonaparte', 'test2@test', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);


insert into saleperson (saleperson_id, first_name, last_name, store_name)
values ('00001', 'Petey', 'Cruiser', 'São Paulo'),
('00002', 'Anna', 'Sthesia', 'São Paulo'),
('00003', 'Paul', 'Molive', 'São Paulo'),
('00004', 'Gail', 'Forcewind', 'São Paulo'),
('00005', 'Paige', 'Turner','São Paulo'),
('00006', 'Bob', 'Frapples', 'São Paulo'),
('00007', 'Walter', 'Melon', '6'),
('00008', 'Shonda', 'Leer', 'São Paulo');

insert into invoice (invoice_id, date, customer_customer_id, car_car_id, saleperson_saleperson_id)
values ('852399038', '2018-08-22', '10001','1','00003'),
('731166526', '2018-12-31', '20001', '5','00003'),
('271135104', '2019-01-22', '30001','2','00003');