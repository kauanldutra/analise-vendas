--- gerente da Northwind quer analisar a evolução das vendas e descobrir quais meses apresentaram o maior faturamento

select
	extract('year' from ord.order_date) as ano_da_venda,
	extract ('month' from ord.order_date) as mes_da_venda,
	sum(det.unit_price * det.quantity * (1 - det.discount)) as faturamento_total_mes,
	count (distinct det.order_id) as qntd_pedidos_mes
from orders as ord
inner join order_details as det
	on ord.order_id = det.order_id
group by ano_da_venda, mes_da_venda
order by faturamento_total_mes desc
