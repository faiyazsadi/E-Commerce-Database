-- Find max price from product table
set serveroutput on
declare
    max_price Product.price%type;
begin
    select max(price) into max_price
    from product;
    dbms_output.put_line('Maximum price is: ' || max_price);
end;
/

set serveroutput on
declare
    book_price product.price%type;
    book_name product.product_name%type := 'All Hell Let Loose';
begin
    select price into book_price
    from product
    where product_name = book_name;
    dbms_output.put_line('Book: ' || book_name || ', Price: ' || book_price);
end;
/

set server output on
declare
    book_price product.price%type;
    book_name product.product_name%type := 'All Hell Let Loose';
    discounted_price product.price%type;
begin
    select price into book_price
    from product
    where product_name like book_name;

    if book_price < 300 then
        discounted_price := book_price;
    elsif book_price < 400 then
        discounted_price := book_price - (book_price * .25);
    else
        discounted_price := book_price - (book_price * .35);
    end if;
    dbms_output.put_line(book_name || ' Price: ' || book_price || ' Discounted Price: ' || ROUND(discounted_price, 2));
    
    EXCEPTION
        when others then
            dbms_output.put_line(SQLERRM);

end;
/
show errors

-- Loop to calculate sum
set serveroutput on
declare
    row_count integer;
    counter integer := 1;
    val product.price%type := 0;
    total product.price%type := 0;
begin
    select count(*) into row_count from product;
    loop
        select price into val from product where product_id = counter;
        total := total + val;
        counter := counter + 1;
        exit when counter > row_count;
    end loop;
    dbms_output.put_line('Total: ' || total);
end;
/

-- For Loop
set serveroutput on
declare
    counter integer := 1;
    val product.price%type := 0;
    total product.price%type := 0;
begin
for counter in 1 .. 11
    loop
    select price into val from product where product_id = counter;
    total := total + val;
    end loop;
    dbms_output.put_line('Total: ' || total);
end;
/

-- While Loop
set serveroutput on
declare
    row_count integer;
    counter integer := 1;
    val product.price%type := 0;
    total product.price%type := 0;
begin
    select count(*) into row_count from product;
    while counter <= row_count
    loop
    select price into val from product where product_id = counter;
    total := total + val;
    counter := counter + 1;
    end loop;
    dbms_output.put_line('Total: ' || total);
end;
/

-- Cursor to print first 6 customer
set serveroutput on
declare
    cursor cust_cur is select fname, lname from customer;
    cust_info cust_cur%rowtype;
begin
open cust_cur;
loop
    fetch cust_cur into cust_info;
    exit when cust_cur%rowcount > 6;
    dbms_output.put_line('First Name: ' || cust_info.fname || ', ' || 'Last Name: ' || cust_info.lname);
end loop;
close cust_cur;
end;
/

-- Procedure with no parameters
set serveroutput on
create or replace procedure get_customer is
    id customer.customer_id%type;
    first_name customer.fname%type;
    last_name customer.lname%type;
begin
    id := 74;
    select fname, lname into first_name, last_name
    from customer
    where customer_id = id;
    dbms_output.put_line('First Name: ' || first_name || ', Last Name: ' || last_name);
end;
/
show errors;

begin
    get_customer;
end;
/

-- Procedure with parameters
set serveroutput on
create or replace procedure get_customer(
    id customer.customer_id%type) is
    first_name customer.fname%type;
begin
    select fname into first_name
    from customer
    where customer_id = id;
    dbms_output.put_line('First Name: ' || first_name);
end get_customer;
/
show errors;

begin
    get_customer(80);
end;
/

-- Function with no parameter
set serveroutput on
create or replace Function total_sum return number is
    total product.price%type;
begin
    select sum(price) into total
    from product;
    return total;
end;
/
show errors;

begin
    dbms_output.put_line('Total Sum: ' || total_sum);
end;
/

-- Function with parameter
set serveroutput on
create or replace function customer_name(
    id customer.customer_id%type) return customer.fname%type is
    first_name customer.fname%type;
begin
    select fname into first_name
    from customer
    where customer_id = id;
    return first_name;
end customer_name;
/
show errors;

begin
    dbms_output.put_line('First Name: ' || customer_name(77));
end;
/