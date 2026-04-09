select  

p.product_name, 

od.order_id, 

od.quantity 

from order_details od 

right join products p 

on od.product_id = p.product_id 

order by p.product_name; 