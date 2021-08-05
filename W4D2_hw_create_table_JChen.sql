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
	movie_time TIMESTAMP,
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
	food_type VARCHAR(100),
	food_cost NUMERIC(4,2),
	purchase_time TIMESTAMP
);

CREATE TABLE customers_concessions (
	customers_concessions_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	concession_id INTEGER NOT NULL,
	FOREIGN KEY (concession_id) REFERENCES concessions(concession_id)
);

ALTER TABLE concessions 
	ALTER COLUMN purchase_time TYPE TIMESTAMPTZ;
	
ALTER TABLE movies
	ALTER COLUMN movie_time TYPE TIME;