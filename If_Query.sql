select  

o.order_id, 

o.total_amount, 

t.amount, 

if(t.amount = o.total_amount, 'fully paid', 'not paid') as payment_check 

from orders o 

left join transactions t 

on o.order_id = t.order_id; 