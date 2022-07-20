set sqlblanklines on;
WHENEVER SQLERROR EXIT FAILURE;
-- Generate Tables
@schema.sql
@alter_key_constraint.sql
@add_modify_drop.sql

-- Insert Data Into Tables
@data_customer_order.sql
@data_customer.sql
@data_payment.sql
@data_category.sql
@data_product.sql
@data_order_details.sql

-- Update Table Values
--@update_delete.sql

-- Queries
--@range_search.sql
--@order_by.sql
