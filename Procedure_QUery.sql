delimiter // 

 

create procedure get_products_by_category(in category_input varchar(50)) 

begin 

select  

product_id, 

product_name, 

price, 

stock 

from products 

where category = category_input; 

end // 

 

delimiter ; 

-------------------------------------------------------------------------

call get_products_by_category('home decor'); 