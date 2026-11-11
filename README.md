# Painel de Vendas Northwind

Análise de dados de vendas da base de exemplo **Northwind**, feita com **SQL (PostgreSQL)** e apresentada em um **painel interativo**.

🔗 **[Abrir o painel interativo](https://kauanldutra.github.io/analise-vendas/)**

<img width="1743" height="1051" alt="image" src="https://github.com/user-attachments/assets/276d20c0-b778-4726-822d-684f6f2ac95f" />

1. **Evolução das vendas:** como o faturamento e a quantidade de pedidos mudaram mês a mês, e quais meses tiveram o maior faturamento?
2. **Vendedores:** como é o desempenho de cada vendedor, classificado em Alto, Médio e Baixo?
3. **Clientes:** quais clientes mais geraram faturamento para a empresa?
4. **Produtos:** quais produtos geram mais receita e quanto foi vendido de cada um?

## Alguns resultados

- O melhor mês em faturamento foi **abril de 1998**, com 74 pedidos.
- **Margaret Peacock** é a vendedora com maior faturamento.
- **Horst Kloss** é o cliente que mais gerou faturamento entre os listados.
- **Côte de Blaye** é o produto com maior receita.

## Estrutura do repositório

- `dados/`: arquivos CSV exportados das consultas
- `SQL/`: consultas SQL usadas na análise
- `index.html`: painel interativo (publicado com GitHub Pages)
- `README.md`: este arquivo

## Ferramentas

- SQL e PostgreSQL (consultas feitas no pgAdmin)
- HTML, CSS e JavaScript (painel)
- GitHub Pages (publicação)
- Painel desenvolvido com apoio de IA (Claude), a partir dos resultados das minhas consultas SQL

## Observações

- A base termina no início de maio de 1998, então esse mês aparece como incompleto no painel.
- A lista de clientes inclui apenas quem fez 10 ou mais pedidos.
- Os dados são da base pública de exemplo Northwind, usada para estudo.
