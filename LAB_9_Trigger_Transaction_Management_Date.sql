-- Trigger to check if customer id is valid or not.

create or replace trigger check_customer_id before insert or update on customer
for each row
declare
min_id constant integer := 1;
max_id constant integer := 121;
begin
if :new.customer_id < min_id OR :new.customer_id > max_id then
raise_application_error(-20000, 'New ID is too small or too large.');
end if;
end;
/

insert into customer values(81, 'Parvej', 'Mia', 'Bogura', 'parvej@gmail.com', '12345678', '01711111181', 71, 'Bangladesh', 'Bogura');
insert into customer values(82, 'Shoriful', 'Shoumic', 'Bogura', 'shoiriful@gmail.com', '12345678', '01711111182', 72, 'Bangladesh', 'Bogura');
insert into customer values(123, 'Unknown', 'Unknown', null, null, null, null, 73, null, null);
insert into customer values(83, 'Tashin', 'Ahamad', 'Kustia', 'tashin@gmail.com', '12345678', '01711111183', 74, 'Bangladesh', 'Kustia');

insert into customer values(124, 'Unknown', 'Unknown', null, null, null, null, 73, null, null);
insert into customer values(84, 'Sourav', 'Roy', 'Dhaka', 'roy@gmail.com', '12345678', '01711111181', 72, 'Bangladesh', 'Dhaka');

-- Trigger to update column values
create trigger discount
before insert or update on product
for each row
begin
if :new.quantity >= 4  then
    :new.price := :new.price - (:new.price * .2);
elsif :new.quantity >= 3  then
    :new.price := :new.price - (:new.price * .15);
elsif :new.quantity >= 2  then
    :new.price := :new.price - (:new.price * .1);
end if;
end discount;
/

insert into product values(15, '1Q84', 1, '	Shinchosha', 2, 400);
insert into product values(16, 'Brave New World', 1, 'Chatto & Windus', 3, 400);
insert into product values(17, 'Children of Time', 1, 'Tor UK', 4, 400);

-- Transaction Management
delete from product;
rollback;
insert into product values(15, '1Q84', 1, '	Shinchosha', 2, 400);
savepoint continue_15;
insert into product values(16, 'Brave New World', 1, 'Chatto & Windus', 3, 400);
savepoint continue_16;
rollback to continue_15;
select * from product;

-- Date
select sysdate from dual;

select current_date from dual;

select systimestamp from dual;

select add_months(payment_date, 2) as two_months_extension
from payment
where payment_id = 71;

select add_months(payment_date, -2) as two_months_extension
from payment
where payment_id = 71;

select least(TO_DATE ('22-JUL-2022'), TO_DATE ('21-JUL-2022')) from dual;

select greatest(TO_DATE ('22-JUL-2022'), TO_DATE ('21-JUL-2022')) from dual;

select last_day(TO_DATE('22-JUL-2022')) from dual;

select extract(year from to_date('22-JUL-2022')) as Year from dual;

select extract(month from to_date('22-JUL-2022')) as Month from dual;