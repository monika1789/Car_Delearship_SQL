
--INSERT INTO sales 
INSERT INTO sales (
staff_id,
first_name,
last_name
) VALUES (
 1,
 'John',
  'Doe'
 );

-- INSERT INTO car 
INSERT INTO car (
car_vin,
car_make,
car_model,
customer_id,
staff_id 
) VALUES (
123456789,
'2022',
'Nissan Altima',
1,
1
);


-- INSERT INTO table customer 
INSERT INTO customer (
customer_id,
first_name,
last_name,
car_vin,
staff_id
) VALUES (
1,
'Monika',
'Patel',
123456789,
1
);

-- INSERT INTO car_invoice
INSERT INTO car_invoice (
invoice_no,
payment_info,
customer_id,
staff_id
) VALUES (
1,
'finance',
1,
1
);


------------Second row of car purchase table
--INSERT INTO sales 
INSERT INTO sales (
staff_id,
first_name,
last_name
) VALUES (
 2,
 'peter',
  'ven'
 );

-- INSERT INTO car 
INSERT INTO car (
car_vin,
car_make,
car_model,
customer_id,
staff_id 
) VALUES (
123456799,
'2017',
'Honada',
2,
2
);


-- INSERT INTO table customer 
INSERT INTO customer (
customer_id,
first_name,
last_name,
car_vin,
staff_id
) VALUES (
2,
'Tina',
'Black',
123456799,
1
);

-- INSERT INTO car_invoice
INSERT INTO car_invoice (
invoice_no,
payment_info,
customer_id,
staff_id
) VALUES (
2,
'finance',
2,
1
);




---------first row of service table----
-- INSERT INTO car_service table

INSERT INTO car_service(
service_id,
car_vin,
customer_id 
)VALUES (
1,
123456799,
2
);

-- INSERT INTO mechanic
INSERT INTO mechanic(
mechanic_id,
first_name,
last_name 
) VALUES (
1,
'Kevin',
'Dan'
);

-- INSERT INTO car_parts 
INSERT INTO car_parts (
car_parts,
parts_info,
service_id
) VALUES (
1,
'bumper',
1
);

-- INSERT INTO service_history 
INSERT INTO service_history(
service_history,
service_id,
car_vin
) VALUES (
1,
1,
123456799
);

---------- second row of car service -----------
-- INSERT INTO car_service table

INSERT INTO car_service(
service_id,
car_vin,
customer_id 
)VALUES (
2,
123456789,
1
);

-- INSERT INTO mechanic
INSERT INTO mechanic(
mechanic_id,
first_name,
last_name 
) VALUES (
2,
'sunny',
'ros'
);

-- INSERT INTO car_parts 
INSERT INTO car_parts (
car_parts,
parts_info,
service_id
) VALUES (
2,
'brakes',
2
);

-- INSERT INTO service_history 
INSERT INTO service_history(
service_history,
service_id,
car_vin
) VALUES (
2,
2,
123456789
);

