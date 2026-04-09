select  

p.product_name, 

p.category, 

s.supplier_name, 

s.country 

from products p 

inner join suppliers s 

on p.supplier_id = s.supplier_id 

order by s.supplier_name; 