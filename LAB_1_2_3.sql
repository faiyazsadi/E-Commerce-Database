-- Alter Key Constraints
alter table order_details
add constraint order_details_pk primary key (product_id);

alter table order_details
add constraint order_details_fk1 foreign key(product_id) references Product(product_id) on delete cascade;

alter table order_details
add constraint order_details_fk2 foreign key(order_id) references Customer_Order(order_id) on delete cascade;

-- Add, Modify, Drop
alter table customer
add (country varchar(10),
     city varchar(10)
);

alter table payment
modify (payment_date date,
        amount number(8)
);

alter table category
drop column category_description;

-- Update, Delete
update customer
set password='87654321'
where customer_id=73;

delete from customer_order
where order_id=122;

-- Range Search
select product_name, brand
from product
where price between 20000 and 100000;

select customer_id, fname, lname 
from customer
where customer_id not between 71 and 75;

select customer_id, fname, lname 
from customer
where city in ('Dhaka');

select fname, lname 
from customer
where address like '%Khilgaon%';

-- Order By
select product_id, product_name, brand, price
from product
order by price desc, product_id desc;