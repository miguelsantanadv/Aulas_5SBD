Atividade Prática – SQL com Oracle APEX
Seções 7 a 9 – Oracle Academy: Database Programming with SQL
Tema: Junções, funções de agregação, agrupamentos e operadores de conjunto.
Ferramenta: Oracle APEX – SQL Workshop
Base de dados utilizada: Sistema bancário com tabelas agencia, cliente, conta, emprestimo.

Parte 1 – Junções e Produto Cartesiano (Seção 7)
1. Usando a sintaxe proprietária da Oracle, exiba o nome de cada cliente junto com o número
de sua conta.
SELECT CLIENTE_NOME, CONTA_NUMERO
FROM CLIENTE
JOIN CONTA ON CLIENTE_COD = CLIENTE_CLIENTE_COD;

2. Mostre todas as combinações possíveis de clientes e agências (produto cartesiano).
SELECT c.CLIENTE_NOME, a.AGENCIA_NOME
FROM CLIENTE c
CROSS JOIN AGENCIA a;

3. Usando aliases de tabela, exiba o nome dos clientes e a cidade da agência onde mantêm
conta.
SELECT c.CLIENTE_NOME || ' - ' || a.AGENCIA_CIDADE AS CLIENTE_CIDADE
FROM CLIENTE c
JOIN CONTA ct ON c.CLIENTE_COD = ct.CLIENTE_CLIENTE_COD
INNER JOIN AGENCIA a ON ct.AGENCIA_AGENCIA_COD = a.AGENCIA_COD;

Parte 2 – Funções de Grupo, COUNT, DISTINCT e NVL (Seção 8)
4. Exiba o saldo total de todas as contas cadastradas.
SELECT SUM(SALDO) AS SALDO_TOTAL FROM CONTA

5. Mostre o maior saldo e a média de saldo entre todas as contas.
SELECT MAX(SALDO) AS MAIOR_SALDO, AVG(SALDO) AS MEDIA FROM CONTA

6. Apresente a quantidade total de contas cadastradas.
SELECT COUNT(CONTA_NUMERO)
FROM CONTA;

7. Liste o número de cidades distintas onde os clientes residem.
SELECT COUNT(DISTINCT CIDADE)
FROM CLIENTE;

8. Exiba o número da conta e o saldo, substituindo valores nulos por zero.
SELECT NVL(CONTA_NUMERO, 0), NVL(SALDO, 0) FROM CONTA

Parte 3 – GROUP BY, HAVING, ROLLUP e Operadores de Conjunto (Seção 9)
9. Exiba a média de saldo por cidade dos clientes.
SELECT CIDADE, AVG(SALDO) FROM CONTA
JOIN CLIENTE ON CLIENTE_CLIENTE_COD = CLIENTE_COD
GROUP BY CIDADE

10. Liste apenas as cidades com mais de 3 contas associadas a seus moradores.
SELECT CIDADE FROM CONTA
JOIN CLIENTE ON CLIENTE_CLIENTE_COD = CLIENTE_COD
GROUP BY CIDADE
HAVING COUNT(CIDADE) > 3

11.Utilize a cláusula ROLLUP para exibir o total de saldos por cidade da agência e o total geral.
SELECT SUM(SALDO), AGENCIA_CIDADE FROM CONTA
JOIN AGENCIA ON AGENCIA_AGENCIA_COD = AGENCIA_COD
GROUP BY ROLLUP (AGENCIA_CIDADE)

12. Faça uma consulta com UNION que combine os nomes de cidades dos clientes e das
agências, sem repetições.
SELECT CIDADE FROM CLIENTE
UNION ALL
SELECT AGENCIA_CIDADE FROM AGENCIA

Atividade Prática – SQL com Oracle APEX
Seção 10 – Subconsultas
Tema: Subconsultas de linha única, multilinha, correlacionadas, com EXISTS, NOT EXISTS e a cláusula
WITH.
Ferramenta: Oracle APEX – SQL Workshop
Base de dados utilizada: Sistema bancário (agencia, cliente, conta, emprestimo)

Parte 1 – Subconsultas de Linha Única
1. Liste os nomes dos clientes cujas contas possuem saldo acima da média geral de todas as
contas registradas.
SELECT CLIENTE_NOME
FROM CLIENTE
JOIN CONTA ON SALDO > 
    (SELECT AVG(SALDO)
    FROM CONTA)
AND CLIENTE_COD = CLIENTE_CLIENTE_COD;

2. Exiba os nomes dos clientes cujos saldos são iguais ao maior saldo encontrado no banco.
SELECT CLIENTE_NOME
FROM CLIENTE
JOIN CONTA ON SALDO = 
    (SELECT MAX(SALDO)
    FROM CONTA)
AND CLIENTE_COD = CLIENTE_CLIENTE_COD;


3. Liste as cidades onde a quantidade de clientes é maior que a quantidade média de clientes
por cidade.


Parte 2 – Subconsultas Multilinha
4. Liste os nomes dos clientes com saldo igual a qualquer um dos dez maiores saldos registrados.

5. Liste os clientes que possuem saldo menor que todos os saldos dos clientes da cidade de
Niterói.
SELECT CLIENTE_NOME
FROM CLIENTE
JOIN CONTA ON SALDO <
    (SELECT MIN(SALDO)
    FROM CONTA
    JOIN AGENCIA ON AGENCIA_AGENCIA_COD = AGENCIA_COD AND AGENCIA_CIDADE IN('Niterói')
    )
AND CLIENTE_COD = CLIENTE_CLIENTE_COD;

6. Liste os clientes cujos saldos estão entre os saldos de clientes de Volta Redonda.
SELECT CLIENTE_NOME
FROM CLIENTE
JOIN CONTA ON SALDO BETWEEN 
    (SELECT MIN(SALDO)
    FROM CONTA
    JOIN AGENCIA ON AGENCIA_AGENCIA_COD = AGENCIA_COD AND AGENCIA_CIDADE IN('Volta Redonda')
    )
    AND
    (SELECT MAX(SALDO)
    FROM CONTA
    JOIN AGENCIA ON AGENCIA_AGENCIA_COD = AGENCIA_COD AND AGENCIA_CIDADE IN('Volta Redonda')
    )
AND CLIENTE_COD = CLIENTE_CLIENTE_COD;

Parte 3 – Subconsultas Correlacionadas
7. Exiba os nomes dos clientes cujos saldos são maiores que a média de saldo das contas da
mesma agência.
8. Liste os nomes e cidades dos clientes que têm saldo inferior à média de sua própria cidade.

Parte 4 – Subconsultas com EXISTS e NOT EXISTS
9. Liste os nomes dos clientes que possuem pelo menos uma conta registrada no banco.
10. Liste os nomes dos clientes que ainda não possuem conta registrada no banco.

Parte 5 – Subconsulta Nomeada com WITH
11.Usando a cláusula WITH, calcule a média de saldo por cidade e exiba os clientes que possuem
saldo acima da média de sua cidade.
