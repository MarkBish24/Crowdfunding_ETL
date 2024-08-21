-- Create the 'category' table
CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

-- Create the 'subcategory' table
CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR
)

-- Create the 'contacts' table
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR
);

-- Create the 'campaign' table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR,
    description VARCHAR,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(30),
    backers_count INT,
    country VARCHAR(3),
    currency VARCHAR(4),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR REFERENCES category(category_id),
    subcategory_id VARCHAR REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign
