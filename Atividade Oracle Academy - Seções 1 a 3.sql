Parte 1 – Recuperando Dados (Seção 1)
Objetivo: Utilizar comandos SELECT para exibir dados completos ou parciais de uma tabela.

1. Exiba todos os dados cadastrados na tabela de clientes.
SELECT * FROM CLIENTE

2. Exiba apenas os nomes e as cidades dos clientes.
SELECT CLIENTE_NOME AS NOME, CIDADE
FROM CLIENTE

3. Liste todas as contas registradas, exibindo o número da conta e o saldo.
SELECT CONTA_NUMERO, SALDO
FROM CONTA


Parte 2 – Filtros, Projeções e Concatenação (Seção 2)
Objetivo: Trabalhar com cláusula WHERE, operadores BETWEEN, LIKE, IN, operadores de
concatenação (||) e alias.


4. Liste os nomes dos clientes da cidade de Macaé.
SELECT CLIENTE_NOME AS NOME
FROM CLIENTE
WHERE CIDADE = 'Macaé'

5. Exiba o código e o nome de todos os clientes com código entre 5 e 15.
SELECT CLIENTE_COD AS CÓDIGO, CLIENTE_NOME AS NOME
FROM CLIENTE
WHERE CLIENTE_COD BETWEEN 5 AND 15

6. Exiba os clientes que moram em Niterói, Volta Redonda ou Itaboraí.
SELECT *
FROM CLIENTE
WHERE CIDADE = 'Niterói' OR CIDADE =  'Volta Redonda' OR CIDADE = 'Itaboraí'

7. Exiba os nomes dos clientes que começam com a letra "F".
SELECT CLIENTE_NOME AS NOME
FROM CLIENTE
WHERE CLIENTE_NOME LIKE 'F%'

8. Exiba uma frase com a seguinte estrutura para todos os clientes:
Exemplo: João Santos mora em Nova Iguaçu.
Utilize concatenação e alias para nomear a coluna como "Frase".

SELECT CLIENTE_NOME || ' mora em ' || CIDADE AS FRASE
FROM CLIENTE


Parte 3 – Ordenações, Operadores Lógicos e Funções (Seção 3)
Objetivo: Utilizar ORDER BY, operadores lógicos (AND, OR, NOT) e funções de linha única (ROUND,
UPPER, etc.).

9. Exiba os dados de todas as contas com saldo superior a R$ 9.000, ordenados do maior para o
menor saldo.
SELECT *
FROM CONTA
WHERE SALDO > 9000 
ORDER BY SALDO desc;

10. Liste os clientes que moram em Nova Iguaçu ou que tenham "Silva" no nome.
SELECT * FROM CLIENTE
WHERE CIDADE = 'Nova Iguaçu' OR
CLIENTE_NOME  LIKE '%Silva%';

11. Exiba o saldo das contas com arredondamento para o inteiro mais próximo.
SELECT ROUND (SALDO,0)
FROM CONTA

12. Exiba o nome de todos os clientes em letras maiúsculas.
SELECT UPPER(CLIENTE_NOME) AS NOME
FROM CLIENTE

13. Exiba os nomes dos clientes que não são das cidades de Teresópolis nem Campos dos
Goytacazes.
SELECT CLIENTE_NOME FROM CLIENTE
WHERE NOT CIDADE = 'Teresópolis' AND NOT CIDADE = 'Campos dos Goytacazes'
