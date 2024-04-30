CREATE TABLE inquiry (
    id_inquiry SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
	phone NUMERIC NOT NULL,
    subject VARCHAR(100) NOT NULL,
    message TEXT 
);
