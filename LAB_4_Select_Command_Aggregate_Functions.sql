select fname, lname 
from customer
where customer_id = 73 or customer_id = 74;

select product_name 
from product
where price >= 10000 and price <= 50000;

-- Order By Multiple Column
select payment_date, amount
from payment
order by payment_date, amount desc;

-- Aggregate Functions
select max(price) from product;
select min(price) from product;

select count(*), sum(price), avg(price)
from product;

select count(category_id), count(distinct category_id), count(all category_id)
from product;

-- Group By and Having
select city, count(city)
from customer
group by city;

select city
from customer
group by city
having count(city) > 1;

select count(*) as Items
from product
group by category_id
having category_id < 6;