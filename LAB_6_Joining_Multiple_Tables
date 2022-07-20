-- JOIN
-- Find customer info where payment method is 'Bkash'.
select c.fname, c.lname, p.payment_method
from customer c, payment p
where c.customer_id = p.customer_id and payment_method = 'Bkash';

-- Same query as above using ON.
select c.fname, c.lname, p.payment_method
from customer c JOIN payment p
ON c.customer_id = p.customer_id and payment_method = 'Bkash';

-- Same query as above.
select c.fname, c.lname, p.payment_method
from customer c JOIN payment p
using(customer_id)
where payment_method = 'Bkash';

-- Join using multiple columns.
select c.fname, c.lname
from customer c join payment p
using(customer_id, order_id)
where payment_id > 80;

-- Natural Join(customer_id, order_id)
select c.fname, c.lname
from customer c natural join payment p
where payment_id > 80;

-- Cross Join
select p.product_name
from product p cross join order_details;

-- Inner Join
select c.fname, c.lname
from customer c inner join payment p
on c.customer_id = p.customer_id;

-- Left Outer Join
select customer_id, c.fname, c.lname, p.payment_method
from customer c left outer join payment p
using(customer_id)
where customer_id < 75;

-- Right Outer Join
select p.payment_method, customer_id, c.fname, c.lname
from payment p right outer join customer c
using(customer_id)
where customer_id < 75;

-- Full Outer Join
select customer_id, c.fname, c.lname, p.payment_method
from customer c left outer join payment p
using(customer_id)
where customer_id < 75;

-- Non-Equi Join
select c.fname, c.lname
from customer c join payment p
on c.order_id between 77 and 80;

-- Self Join: Find customers who have same customer_id and order_id.
select fname, lname
from customer
where customer_id in (
    select p.customer_id
    from payment p join payment q
    on p.customer_id = q.order_id
);