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