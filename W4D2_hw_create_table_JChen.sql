CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	cash NUMERIC(10,2),
	age INTEGER
);

CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	movie_time TIMESTAMP, --double check when entering data
	rating VARCHAR(10)
);

CREATE TABLE tickets (
	ticket_id SERIAL PRIMARY KEY,
	movie_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	ticket_cost NUMERIC(4,2),
	purchase_time TIMESTAMP,
	seat VARCHAR(3),
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE concessions (
	concession_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	foot_type VARCHAR(100),
	food_cost NUMERIC(4,2),
	purchase_time TIMESTAMP,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);