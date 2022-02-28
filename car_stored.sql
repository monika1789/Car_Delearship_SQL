

-- stored function to insert data into sales table

CREATE OR  replace FUNCTION add_sales(_staff_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS  void 
AS $MAIN$ 
BEGIN
	INSERT INTO sales(staff_id, first_name, lASt_name)
	VALUES (_staff_id, _first_name, _last_name);
END;
$MAIN$ 
LANGUAGE plpgsql;

SELECT add_sales (2,'Nil','Daniel');
SELECT add_sales (3, 'Mike','San');

SELECT  * FROM sales

-- stored function to insert data into car table

CREATE OR  replace FUNCTION add_car(_car_vin INTEGER,_car_make VARCHAR,_car_model VARCHAR,_staff_id INTEGER,_customer_id INTEGER)
RETURNS  void 
AS $MAIN$ 
BEGIN 
	INSERT INTO car(car_vin,car_make,car_model,staff_id,customer_id)
	VALUES (_car_vin,_car_make,_car_model,_staff_id,_customer_id);
END;
$MAIN$ 
LANGUAGE plpgsql;

SELECT add_car (12336787,'2021','cambry',3,1);
SELECT add_car (12345674, '2018','ford',4,2);

SELECT * FROM car




