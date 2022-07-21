--product_id integer not null,
--product_name varchar(10),
--category_id integer,
--brand varchar(10),
--quantity integer,
--price number(8),

-- describe product;

insert into product values(1, 'All Hell Let Loose', 1, 'HarperCollins', 1, 400);
insert into product values(2, 'Screw Driver', 2, 'iFixIt', 1, 200);
insert into product values(3, 'Ice Cream', 3, 'Polar', 3, 90);
insert into product values(4, 'Sun Glasses', 4, 'GlassGo', 1, 600);
insert into product values(5, 'Banana', 5, default, 12, 60);
insert into product values(6, 'SPEEDY BANDOULIERE 25', 6, 'Louis Vuitton', 1, 30000);
insert into product values(7, 'Alatrol', 7, 'Square', 12, 100);
insert into product values(8, 'iPad', 8, 'Apple', 1, 80000);
insert into product values(9, 'Reindeer Figurine Showpiece', 9, 'LandMark', 1, 800);
insert into product values(10, 'Shirts', 10, 'Milan', 2, 3000);
insert into product values(11, 'Notebook', 1, default, 1, 60);
insert into product values(21, 'Man''s Search for Meaning', 1, 'HarperCollins', 1, 500);
insert into product values(31, 'Flowers for Algernon', 1, 'HarperCollins', 1, 300);
insert into product values(41, 'The Sailor Who Fell from Grace with the Sea', 1, 'HarperCollins', 1, 400);
insert into product values(51, 'Beyond Good & Evil', 1, 'HarperCollins', 1, 350);
insert into product values(61, 'Bushido', 1, 'HarperCollins', 1, 300);



-- price should be great than zero.
-- insert into product values(11, 'Shirts', 11, 'Milan', 2, -100);

-- select * from product;
