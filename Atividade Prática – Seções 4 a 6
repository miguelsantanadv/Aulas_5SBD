Atividade Prática – SQL com Oracle APEX
Seções 4 a 6 – Oracle Academy: Database Programming with SQL
Tema: Funções de linha única, manipulação de nulos, conversões e junções.
Ferramenta: Oracle APEX – SQL Workshop
Base de dados utilizada: Sistema bancário com tabelas agencia, cliente, conta, emprestimo.

Parte 1 – Funções de Caracteres, Números e Datas (Seção 4)
1. Exiba os nomes dos clientes com todas as letras em maiúsculas.
SELECT UPPER(CLIENTE_NOME) AS NOME
FROM CLIENTE;

2. Exiba os nomes dos clientes formatados com apenas a primeira letra maiúscula.
SELECT INITCAP(CLIENTE_NOME) AS NOME
FROM CLIENTE;

3. Mostre as três primeiras letras do nome de cada cliente.
SELECT SUBSTR(CLIENTE_NOME,1,3) FROM CLIENTE;

4. Exiba o número de caracteres do nome de cada cliente.
SELECT LENGTH(CLIENTE_NOME)
FROM CLIENTE;

5. Apresente o saldo de todas as contas, arredondado para o inteiro mais próximo.
SELECT ROUND (SALDO,0)
FROM CONTA;

6. Exiba o saldo truncado, sem casas decimais.
SELECT TRUNC(SALDO) AS SALDO
FROM CONTA;

7. Mostre o resto da divisão do saldo da conta por 1000.
SELECT MOD(SALDO,1000) AS SALDO
FROM CONTA;

8. Exiba a data atual do servidor do banco.
SELECT SYSDATE FROM DUAL;

9. Adicione 30 dias à data atual e exiba como "Data de vencimento simulada".
SELECT TO_CHAR(SYSDATE + 30, 'DD/MM/YYYY') AS "Data de vencimento simulada"
FROM DUAL;

10.Exiba o número de dias entre a data de abertura da conta e a data atual.
SELECT SYSDATE - TO_DATE(DATA_ABERTURA 'DD-MM-YYYY') AS "CONTA ABERTA HÁ"
FROM CONTA;

Parte 2 – Conversão de Dados e Tratamento de Nulos (Seção 5)
11.Apresente o saldo de cada conta formatado como moeda local.
SELECT TO_CHAR(SALDO, 'L999,999,999.99', 'NLS_CURRENCY = ''R$'' ') AS moeda_local
FROM CONTA;

12. Converta a data de abertura da conta para o formato 'dd/mm/yyyy'.
SELECT TO_CHAR(DATA_ABERTURA, 'DD/MM/YYYY') AS "Data de vencimento simulada"
FROM DUAL;

13.Exiba o saldo da conta e substitua valores nulos por 0.
SELECT NVL(SALDO,0) AS SALDO
FROM CONTA

14.Exiba os nomes dos clientes e substitua valores nulos na cidade por 'Sem cidade'.
SELECT CLIENTE_NOME, NVL(RUA, 'Sem Rua') AS RUA, NVL(CIDADE, 'Sem Cidade') AS CIDADE
FROM CLIENTE

15. Classifique os clientes em grupos com base em sua cidade:
o 'Região Metropolitana' se forem de Niterói
o 'Interior' se forem de Resende
o 'Outra Região' para as demais cidades
SELECT CLIENTE_NOME,
CASE CIDADE
    WHEN 'Niterói' THEN 'Região Metropolitana'
    WHEN 'Resende' THEN 'Interior'
    ELSE 'Outra Região'
END AS REGIÃO
FROM CLIENTE

Parte 3 – Junções entre Tabelas (Seção 6)
16.Exiba o nome de cada cliente, o número da conta e o saldo correspondente.
SELECT CLIENTE_NOME, CONTA_NUMERO, SALDO
FROM CLIENTE 
JOIN CONTA ON CLIENTE_COD = CLIENTE_CLIENTE_COD;

17. Liste os nomes dos clientes e os nomes das agências onde mantêm conta.
SELECT CLIENTE_NOME, AGENCIA_NOME
FROM CONTA
JOIN CLIENTE ON CLIENTE_COD = CLIENTE_CLIENTE_COD
JOIN AGENCIA ON AGENCIA_COD = AGENCIA_AGENCIA_COD

18. Mostre todas as agências, mesmo aquelas que não possuem clientes vinculados (junção
externa esquerda).
SELECT DISTINCT AGENCIA_NOME
FROM AGENCIA
LEFT JOIN CONTA ON AGENCIA_AGENCIA_COD = AGENCIA_COD;
