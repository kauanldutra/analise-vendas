--- Receita por produto e quantidade vendida

select
	pro.product_name as produto,
	sum((ord.quantity * ord.unit_price * (1 - ord.discount))) as total_vendido,
	sum (ord.quantity) as quantidade
from order_details as ord
left join products as pro
	on ord.product_id = pro.product_id
group by pro.product_name
order by total_vendido desc
