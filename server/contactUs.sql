CREATE TABLE inquiry (
    id_inquiry SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    company VARCHAR(100),
    country VARCHAR(255) NOT NULL,
    phone NUMERIC NOT NULL,
    message TEXT 
);
