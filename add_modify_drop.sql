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