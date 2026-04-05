#Orders greater than 100
select * 
from Orders 
where total_amount > 100;

# Orders greater than 100, sorted highest first
select *
from Orders
where total_amount > 100
order by total_amount desc;

#Orders within a specific range
select *
from Orders
where total_amount between 100 and 500;


#All customers whose email ends with 'gmail.com'
SELECT *
FROM Customers
WHERE email LIKE '%gmail.com';
