set sqlblanklines on;

drop table Order_Details;
drop table Product;
drop table Category;
drop table Payment;
drop table Customer;
drop table Customer_Order;

create table Customer_Order (
    order_id integer not null,
    amount number(8) check(amount >= 0 and amount <= 100000),
    order_date date,
    primary key (order_id)
);

create table Customer (
    customer_id integer not null,
    fname varchar(10),
    lname varchar(10),
    address varchar(30),
    email_id varchar(20),
    password varchar(20),
    phone varchar(12),
    order_id integer,
    -- added country and city column through alter table command
    -- country varchar(10),
    -- city varchar(10),

    primary key(customer_id),
    foreign key(order_id) references Customer_Order(order_id) on delete cascade
);

create table Payment (
    payment_id integer not null,
    customer_id integer,
    order_id integer,
    payment_date varchar(10),
    amount number(10) check(amount >= 0 AND amount <= 100000),

    primary key(payment_id),
    foreign key(customer_id) references Customer(customer_id) on delete cascade,
    foreign key(order_id) references Customer_Order(order_id) on delete cascade
);

create table Category (
    category_id integer not null,
    category_name varchar(10),
    category_description varchar(30),

    primary key(category_id)
);

create table Product (
    product_id integer not null,
    product_name varchar(30),
    category_id integer,
    brand varchar(20) default 'None',
    quantity integer default 1,
    price number(8) check(price >= 0 and price <= 100000),

    primary key(product_id),
    foreign key(category_id) references Category(category_id) on delete cascade
);


create table Order_Details (
    product_id integer not null,
    quantity integer default 1,
    order_id integer
    -- ,

    -- primary key(product_id),
    -- foreign key(product_id) references Product(product_id) on delete cascade,
    -- foreign key(order_id) references Customer_Order(order_id) on delete cascade
);