select product_id, sum(quantity) as total_units_sold 

from Order_details 

group by product_id; 

-----------------------------------------------------

select avg(total_amount) as avg_order_value 

from Orders; 

-----------------------------------------------------

select category, avg(price) as avg_price 

from Products 

group by category 

having avg(price) > 4; 