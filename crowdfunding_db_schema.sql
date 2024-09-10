-- Conctacts Table
CREATE TABLE contacts(
	contact_id INTEGER NOT NULL, 
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	PRIMARY KEY (contact_id ) 
);

-- See empty table headers
SELECT * FROM contacts; 

-- Category Table
CREATE TABLE category(
	category_id	VARCHAR NOT NULL,
	category VARCHAR NOT NULL,
	PRIMARY KEY (category_id)
);

-- See empty table headers
SELECT * FROM category; 

-- Subcategory Table
CREATE TABLE subcategory(
	subcategory_id VARCHAR NOT NULL,
	subcategory VARCHAR NOT NULL,
	PRIMARY KEY (subcategory_id)
);

-- See empty table headers
SELECT * FROM subcategory; 

-- Campaign Table
CREATE TABLE campaign(
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR NOT NULL,	
	description	TEXT NOT NULL,
	goal NUMERIC (10,2) NOT NULL,
	pledged NUMERIC (10,2) NOT NULL, 
	outcome	VARCHAR NOT NULL,
	backers_count INTEGER NOT NULL ,	
	country	VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,	
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	PRIMARY KEY (cf_id) 
);

-- See empty table headers
SELECT * FROM campaign; 

-- Import data for each table from the CVS data files & see uploaded data for each table
SELECT * FROM contacts; 
SELECT * FROM category; 
SELECT * FROM subcategory; 
SELECT * FROM campaign; 

