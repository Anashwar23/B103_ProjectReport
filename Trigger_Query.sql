delimiter // 

 

create trigger trg_reduce_stock 

after insert on order_details 

for each row 

begin 

update products 

set stock = stock - new.quantity 

where product_id = new.product_id; 

end // 

 

delimiter ; 
--------------------------------------
select product_id, product_name, stock 

from products 

where product_id = 1; 
----------------------------------------

insert into order_details (order_id, product_id, quantity, price_each) 

values (536365, 1, 1, 2.55); 

 -----------------------------------------

select product_id, product_name, stock 

from products 

where product_id = 1; 