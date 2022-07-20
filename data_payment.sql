--payment_id integer not null,
--customer_id integer,
--order_id integer,
--payment_date date,
--amount number(8),

-- describe payment;

insert into payment values(71, 71, 71, TO_DATE('12-JUN-2022'), 711, 'Nagad');
insert into payment values(72, 72, 72, TO_DATE('13-JUN-2022'), 712, 'Bkash');
insert into payment values(73, 73, 73, TO_DATE('14-JUN-2022'), 713, 'Rocket');
insert into payment values(74, 74, 74, TO_DATE('15-JUN-2022'), 714, 'Nagad');
insert into payment values(75, 75, 75, TO_DATE('16-JUN-2022'), 715, 'Bkash');
insert into payment values(76, 76, 76, TO_DATE('17-JUN-2022'), 716, 'Rocket');

insert into payment values(77, 77, 77, TO_DATE('18-JUN-2022'), 717, 'Nagad');
insert into payment values(78, 78, 78, TO_DATE('19-JUN-2022'), 718, 'Bkash');
insert into payment values(79, 79, 79, TO_DATE('20-JUN-2022'), 719, 'Rocket');
insert into payment values(80, 80, 80, TO_DATE('21-JUN-2022'), 720, 'Nagad');

insert into payment values(81, 61, 72, TO_DATE('21-JUN-2022'), 720, 'Rocket');
insert into payment values(82, 62, 73, TO_DATE('13-JUN-2022'), 712, 'Nagad');
insert into payment values(83, 63, 74, TO_DATE('14-JUN-2022'), 713, 'Bkash');
insert into payment values(84, 64, 74, TO_DATE('15-JUN-2022'), 714, 'Rocket');
insert into payment values(85, 65, 74, TO_DATE('16-JUN-2022'), 715, 'Nagad');
insert into payment values(86, 61, 76, TO_DATE('17-JUN-2022'), 716, 'Bkash');
-- select * from payment;
