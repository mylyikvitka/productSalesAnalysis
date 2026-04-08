-- 1. Customer
COPY Customer(customer_id, country, is_known)
FROM 'path/to/data/customers.csv'
DELIMITER ','
CSV HEADER;

-- 2. Product
COPY Product(stock_code, unit_price, description)
FROM 'path/to/data/products.csv'
DELIMITER ','
CSV HEADER;

-- 3. Date
COPY Date(dateID, date_stamp, year, month, day, hour, day_of_week)
FROM 'path/to/data/dates.csv'
DELIMITER ','
CSV HEADER;

-- 4. Sale
COPY Sale(sale_id, invoice_no, stock_code, dateID, customerID, quantity, total_price)
FROM 'path/to/data/sales.csv'
DELIMITER ','
CSV HEADER;