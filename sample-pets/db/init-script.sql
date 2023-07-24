-- Create the schema
CREATE SCHEMA IF NOT EXISTS pets_sample;

-- Switch to the pets-sample schema
SET SEARCH_PATH TO pets_sample;

-- Create the pets table
CREATE TABLE IF NOT EXISTS pets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INTEGER,
    type VARCHAR(100),
    breed VARCHAR(100),
    color VARCHAR(100),
    weight DECIMAL(5, 2),
    height DECIMAL(5, 2),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- Create an index on the name column for faster searching
CREATE INDEX idx_pets_name ON pets (name);

-- Insert cool and funny test data into the pets table
INSERT INTO pets (name, age, type, breed, color, weight, height, date_of_birth)
VALUES
    ('Whiskers', 4, 'Cat', 'Scottish Fold', 'Gray', 3.5, 9.5, '2017-06-12'),
    ('Barkley', 2, 'Dog', 'Golden Retriever', 'Golden', 25.3, 22.0, '2019-02-05'),
    ('Fluffy', 1, 'Rabbit', 'Lionhead', 'White', 1.2, 7.8, '2022-03-19'),
    ('Spike', 5, 'Hedgehog', NULL, 'Brown', 0.8, 4.5, '2016-10-27'),
    ('Bubbles', 3, 'Fish', 'Goldfish', 'Orange', 0.1, NULL, '2020-08-14');