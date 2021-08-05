INSERT INTO customers (
	first_name,
	last_name,
	cash,
	age
) VALUES ('Jerry', 'Chen', 99999999.99, 22), ('Ash', 'Ketchum', 0, 10);

INSERT INTO movies (
	movie_name,
	movie_time,
	rating
) VALUES ('Black Widow', '2:43:23', 5), ('Shang-Chi and the Legend of the Ten Rings', '2:45:43', 5);

INSERT INTO tickets (
	movie_id,
	customer_id,
	ticket_cost,
	purchase_time,
	seat
) VALUES (1, 1, 17.95, '2021-08-04 10:31:00', 'B15'), (2, 2, 15.95, '2021-08-04 10:52:00', 'C28');

INSERT INTO concessions (
	food_type,
	food_cost,
	purchase_time
) VALUES ('Hot dog', 10, '2021-08-04 10:34:00 EST'), ('Popcorn', 15, '2021-08-04 10:53:00');

INSERT INTO customers_concessions (
	customer_id,
	concession_id
) VALUES (1, 1), (2, 2);

SELECT * FROM customers_concessions