--SUBQUERY

-- Finding customer information using subquery.
select customer_id, fname
from customer
where customer_id in (select customer_id
    from customer
    where city = 'Dhaka');

-- Insert into a table using subquery.
create table demo_customer_dhaka(
    customer_id integer NOT NULL,
    fname varchar(10),
    lname varchar(10),
    primary key(customer_id)
);

insert into demo_customer_dhaka
select customer_id, fname, lname
from customer where city = 'Dhaka';

select * from demo_customer_dhaka;

drop table demo_customer_dhaka;

-- Find from customer and payment where payment id = 74.
select c.customer_id, c.fname, c.lname
from customer c
where c.customer_id in (select o.customer_id
    from customer o, payment p
    where o.customer_id = p.customer_id
    and p.payment_id = 74);

-- UNION ALL
-- Find customers who are from dhaka or have a payment id > 74
select customer_id, fname, lname
from customer
where city = 'Dhaka'
UNION ALL
select customer_id, fname, lname
from customer c
where c.customer_id in (
    select o.customer_id
    from customer o, payment p
    where o.customer_id = p.customer_id
    and p.payment_id > 74);
);

-- UNION
-- Same as UNION ALL
select customer_id, fname, lname
from customer
where city = 'Dhaka'
UNION
select customer_id, fname, lname
from customer c
where c.customer_id in (
    select o.customer_id
    from customer o, payment p
    where o.customer_id = p.customer_id
    and p.payment_id > 74);
);

-- INTERSECT
-- Find customers who are from dhaka and have payment_id > 74
select customer_id, fname, lname
from customer
where city = 'Dhaka'
INTERSECT
select customer_id, fname, lname
from customer c
where c.customer_id in (
    select o.customer_id
    from customer o, payment p
    where o.customer_id = p.customer_id
    and p.payment_id > 74);
);

-- MINUS
-- Find customers who are from dhaka and have payment_id <= 74
select customer_id, fname, lname
from customer
where city = 'Dhaka'
MINUS
select customer_id, fname, lname
from customer c
where c.customer_id in (
    select o.customer_id
    from customer o, payment p
    where o.customer_id = p.customer_id
    and p.payment_id > 74);
);