select  

o.order_id, 

o.order_date, 

o.o_status, 

t.payment_method, 

t.amount 

from orders o 

left join transactions t 

on o.order_id = t.order_id 

order by o.order_id; 

 