create table hw1.state (
    state VARCHAR(3) primary key,
    country VARCHAR(20) not null
);
create table hw1.postcode (
    postcode INTEGER primary key,
    state VARCHAR(3) not null
);
create table hw1.address (
    address_id INTEGER primary key,
    address VARCHAR(100) not null,
    postcode INTEGER not null,
    property_valuation INTEGER not null
);
create table hw1.customer (
    customer_id INTEGER primary key,
    first_name VARCHAR(50) not null,
    last_name VARCHAR(50),
    gender VARCHAR(1) not null,
    dob TIMESTAMP,
    job_title VARCHAR(100),
    job_industry_category VARCHAR(50) not null,
    wealth_segment VARCHAR(50) not null,
    deceased_indicator BOOLEAN not null,
    owns_car BOOLEAN not null,
    address_id INTEGER not null
);
create table hw1.brand_product (
    brand_product_id INTEGER primary key,
    product_id INTEGER not null,
    brand VARCHAR(30) not null,
    product_line VARCHAR(10) not null,
    product_class VARCHAR(10) not null,
    product_size VARCHAR(10) not null,
    list_price DECIMAL(10,2) not null,
    standard_cost DECIMAL(10,2)
);
create table hw1.transaction (
    transaction_id INTEGER primary key,
    brand_product_id INTEGER not null,
    customer_id INTEGER not null,
    transaction_date TIMESTAMP not null,
    online_order BOOLEAN,
    order_status VARCHAR(15) not null
);










