select  

supplier_name, 

country, 

case 

when country in ('germany', 'france', 'italy', 'sweden') then 'Europe' 

when country = 'usa' then 'North America' 

when country = 'japan' then 'Asia' 

else 'other' 

end as region 

from suppliers; 