alter table order_details
add constraint order_details_pk primary key (product_id);

alter table order_details
add constraint order_details_fk1 foreign key(product_id) references Product(product_id) on delete cascade;

alter table order_details
add constraint order_details_fk2 foreign key(order_id) references Customer_Order(order_id) on delete cascade;