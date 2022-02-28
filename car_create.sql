
--CREATE TABLE sales
CREATE TABLE sales (
  staff_id SERIAL PRIMARY KEY,
  first_name VARCHAR (100),
  last_name VARCHAR (100)
);

-- CREATE TABLE car
CREATE TABLE car (
  car_vin SERIAL PRIMARY KEY,
  car_make VARCHAR (50),
  car_model VARCHAR (50),
  staff_id INTEGER NOT NULL,
  customer_id Integer NOT NULL,
  FOREIGN KEY (staff_id) REFERENCES sales(staff_id),
  FOREIGN KEY (customer_id) REFERENCES customer_id 
);


-- CREATE TABLE customer
CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR (100),
  last_name VARCHAR(100),
  car_vin INTEGER NOT NULL,
  staff_id INTEGER NOT NULL,
  FOREIGN KEY (car_vin) REFERENCES car(car_vin),
  FOREIGN KEY (staff_id) REFERENCES sales(staff_id)
 );




-- CREATE TABLE car_invoice
CREATE TABLE car_invoice(
invoice_no SERIAL PRIMARY KEY,
payment_info VARCHAR(100),
customer_id INTEGER NOT NULL,
staff_id INTEGER NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (staff_id) REFERENCES sales(staff_id)
);

-- CREATE TABLE car_service 
CREATE TABLE car_service (
service_id SERIAL PRIMARY KEY,
service_date DATE default CURRENT_DATE,
car_vin INTEGER NOT NULL,
customer_id INTEGER NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (car_vin) REFERENCES car(car_vin)
);

--CREATE TABLE mechanics
CREATE TABLE mechanic (
mechanic_id SERIAL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100)
);

--CREATE TABLE service_history
CREATE TABLE service_history(
  service_history SERIAL PRIMARY KEY,
  service_id INTEGER NOT NULL,
  car_vin INTEGER NOT NULL,
  FOREIGN KEY (service_id) REFERENCES car_service(service_id),
  FOREIGN KEY (car_vin) REFERENCES car(car_vin)
);

-- CREATE TABLE car_parts
create table car_parts (
car_parts SERIAL PRIMARY KEY,
parts_info VARCHAR(200),
service_id INTEGER ,
FOREIGN KEY (service_id) REFERENCES car_service(service_id)
);









