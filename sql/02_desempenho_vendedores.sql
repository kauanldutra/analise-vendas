--- O gerente quer analisar o desempenho dos vendedores.

select
	concat (emp.first_name, ' ', emp.last_name) as nome_funcionario,
	count(distinct det.order_id) as pedidos_realizados_total,
	sum(det.unit_price * det.quantity * (1 - det.discount)) as faturamento_total,
	case
		when sum(det.unit_price * det.quantity * (1 - det.discount)) >= 150000 then 'Alto'
		when sum(det.unit_price * det.quantity * (1 - det.discount)) >= 80000 and sum(det.unit_price * det.quantity * (1 - det.discount)) < 150000 then 'Medio'
		else 'Baixo'
		end as classificacao_vendedor

from employees as emp
inner join orders as ord
	on emp.employee_id = ord.employee_id
inner join order_details as det
	on ord.order_id = det.order_id
group by nome_funcionario
order by faturamento_total desc
