--- Relatório para identificar quais clientes mais geraram faturamento para a empresa.

select
	cus.contact_name as nome_do_cliente,
	cus.country as pais,
	count(distinct ord.order_id) as pedidos_realizados,
	sum(unit_price * quantity * (1 - discount)) as faturamento_total

from customers as cus
inner join orders as ord
	on cus.customer_id = ord.customer_id
inner join order_details as det
	on ord.order_id = det.order_id
group by cus.contact_name, cus.country
having count(distinct ord.order_id) >= 10
order by faturamento_total desc
