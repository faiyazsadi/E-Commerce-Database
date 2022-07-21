-- View
create view user_info as
select fname, lname
from customer
where customer_id >= 71 and customer_id <= 80;

select * from user_info;

drop view user_info;

create view info as
select customer.fname, customer.lname, payment.payment_method
from customer
inner join payment
on customer.order_id = payment.order_id
where payment.payment_method = 'Bkash';

select * from info;

create or replace view info as
select distinct customer.fname, customer.lname, payment.payment_method
from customer
inner join payment
on customer.order_id = payment.order_id
where payment.payment_method = 'Nagad';

select * from info;

drop view info;