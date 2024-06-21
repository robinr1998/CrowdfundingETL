﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/p7tbv8
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE category (
    category_id varchar(4)   NOT NULL,
    category varchar(15)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar(10)   NOT NULL,
    subcategory varchar(20)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    email varchar(50)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(100)   NOT NULL,
    description varchar(200)   NOT NULL,
    goal decimal(18,2)   NOT NULL,
    pledged decimal(18,2)   NOT NULL,
    outcome varchar(10)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(2)   NOT NULL,
    currency varchar(3)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(4)   NOT NULL,
    subcategory_id varchar(15)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        cf_id
     )
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

