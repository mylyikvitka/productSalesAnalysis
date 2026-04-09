select current_database();

CREATE TABLE Customer (
    customer_id INTEGER PRIMARY KEY,
    country TEXT,
    is_known BOOLEAN
);

CREATE TABLE Product (
    stock_code TEXT PRIMARY KEY,
    unit_price NUMERIC,
    description TEXT
);

CREATE TABLE Date (
    dateID INTEGER PRIMARY KEY,
    date_stamp TIMESTAMP,
    year INTEGER,
    month INTEGER,
    day INTEGER,
    hour INTEGER,
    day_of_week TEXT
);

CREATE TABLE Sale (
    sale_id INTEGER PRIMARY KEY,
    invoice_no TEXT,
    stock_code TEXT REFERENCES Product(stock_code),
    dateID INTEGER REFERENCES Date(dateID),
    customerID INTEGER REFERENCES Customer(customer_id),
    quantity INTEGER,
    total_price NUMERIC
);


DROP TABLE IF EXISTS Customer CASCADE;
DROP TABLE IF EXISTS Product CASCADE;