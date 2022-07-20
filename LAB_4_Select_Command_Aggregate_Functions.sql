select max(price) from product;

select count(*), sum(price), avg(price)
from product;

select count(category_id), count(distinct category_id), count(all category_id)
from product;

select city, count(city)
from customer
group by city;

select city
from customer
group by city
having count(city) > 1;