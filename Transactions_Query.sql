delimiter // 

 

create procedure process_order_payment( 

in payment_order_id int, 

in payment_method varchar(50), 

in payment_amount decimal(10,2) 

) 

begin 

declare order_count int; 

 

start transaction; 

 

select count(*) into order_count 

from orders 

where order_id = payment_order_id; 

 

if order_count = 0 then 

rollback; 

select 'order does not exist' as message; 

else 

insert into transactions (transaction_date, payment_method, amount, order_id) 

values (curdate(), payment_method, payment_amount, payment_order_id); 

 

update orders 

set o_status = 'delivered' 

where order_id = payment_order_id; 

 

commit; 

select 'transaction successful' as message; 

end if; 

 

end // 

 

delimiter ; 

 -------------------------------------------------------------------------------

call process_order_payment(536365, 'credit card', 55.22); 