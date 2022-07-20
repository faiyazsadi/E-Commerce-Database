--customer_id integer not null,
--fname varchar(10),
--lname varchar(10),
--address varchar(30),
--email_id varchar(20),
--password varchar(20),
--phone varchar(12),
--order_id integer,
--country varchar(10),
--city varchar(10),

-- describe customer;
insert into customer values(61, 'Mahjabin', 'Oishi', 'Bogura', 'oishi@gmail.com', '12345678', '01711111161', 71, 'Bangladesh', 'Bogura');
insert into customer values(62, 'Mehedy', 'Hasan', 'Bogura', 'mehedy@gmail.com', '12345678', '01711111161', 72, 'Bangladesh', 'Dhaka');
insert into customer values(63, 'Mizanur', 'Oishi', 'Bogura', 'asif@gmail.com', '12345678', '01711111161', 73, 'Bangladesh', 'Dhaka');
insert into customer values(64, 'Ahsan', 'Swassow', 'Bogura', 'swassow@gmail.com', '12345678', '01711111161', 74, 'Bangladesh', 'Jessore');
insert into customer values(65, 'Pushan', 'Paul', 'Bogura', 'pushan@gmail.com', '12345678', '01711111161', 75, 'Bangladesh', 'Chittagong');
insert into customer values(71, 'Kheya', 'Haque', 'Jatrabari', 'kheya@gmail.com', '12345678', '01711111171', 71, 'Bangladesh', 'Dhaka');
insert into customer values(72, 'Emon', 'Mehedi', 'Bogura', 'emon@gmail.com', '12345678', '01711111172', 72, 'Bangladesh', 'Bogura');
insert into customer values(73, 'Sadi', 'Faiyaz', 'Khilgaon', 'sadi@gmail.com', '12345678', '01711111173', 73, 'Bangladesh', 'Dhaka');
insert into customer values(74, 'Shafin', 'Wahid', 'Khilgaon', 'shafin@gmail.com', '12345678', '01711111174', 74, 'Bangladesh', 'Dhaka');
insert into customer values(75, 'Ankon', 'Mahadi', 'Cumilla', 'ankon@gmail.com', '12345678', '01711111175', 75, 'Bangladesh', 'Cumilla');
insert into customer values(76, 'Neha', 'Humaira', 'Malibagh', 'neha@gmail.com', '12345678', '01711111176', 76, 'Bangladesh', 'Dhaka');
insert into customer values(77, 'Rakib', 'Hasan', 'Jamalpur', 'rakib@gmail.com', '12345678', '01711111177', 77, 'Bangladesh', 'Jamalpur');
insert into customer values(78, 'Alif', 'Khairul', 'Mohakhali', 'alif@gmail.com', '12345678', '01711111178', 78, 'Bangladesh', 'Dhaka');
insert into customer values(79, 'Nafia', 'Hossain', 'Rampura', 'nafia@gmail.com', '12345678', '01711111179', 79, 'Bangladesh', 'Dhaka');
insert into customer values(80, 'Najib', 'Hasan', 'Rangpur', 'najib@gmail.com', '12345678', '01711111180', 80, 'Bangladesh', 'Rangpur');

-- Deleted the following row. ON DELETE CUSCADE from customer_order
insert into customer values(122, 'Name', 'Name', 'Barishal', 'name@gmail.com', '12345678', '01711111122', 122, 'Bangladesh', 'Barishal');


-- select * from customer;