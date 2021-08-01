/* 1. Usar o banco de dados PEDIDOS. */
USE PEDIDOS;

/* 2. Listar clientes do estado de São Paulo (SP). */
-- Campo ESTADO da tabela TB_CLIENTE é CHAR(2) e contém a sigla do estado
SELECT * FROM TB_CLIENTE WHERE ESTADO = 'SP';

/* 3. Listar clientes do estado de  Minas Gerais e Rio de Janeiro 
      (MG, RJ). */
SELECT * FROM TB_CLIENTE WHERE ESTADO IN ('MG','RJ');

/* 4. Listar clientes do estado de  São Paulo, Minas Gerais e 
      Rio de Janeiro (SP,MG,RJ). */
SELECT * 
FROM TB_CLIENTE 
WHERE ESTADO IN ('SP','MG','RJ')

/* 5. Listar os vendedores com o nome LEIA. */
SELECT * 
FROM TB_VENDEDOR 
WHERE NOME LIKE 'LEIA%';

/* 6. Listar todos os clientes que tenham NOME 
      começando com BRINDES. */
SELECT * 
FROM TB_CLIENTE 
WHERE NOME LIKE 'BRINDES%'

/* 7. Listar todos os clientes que tenham NOME
      terminando com BRINDES. */
SELECT * 
FROM TB_CLIENTE 
WHERE NOME LIKE '%BRINDES'

/* 8. Listar todos os clientes que tenham NOME
      contendo BRINDES. */
SELECT * FROM TB_CLIENTE WHERE NOME LIKE '%BRINDES%';

/* 9. Listar todos os produtos com DESCRICAO 
      começando por “CANETA”.*/
SELECT * FROM TB_PRODUTO WHERE DESCRICAO LIKE 'CANETA%';

/* 10. Listar todos os produtos com 
       DESCRICAO contendo “SPECIAL”. */
SELECT * 
FROM TB_PRODUTO 
WHERE DESCRICAO LIKE '%SPECIAL%'

/* 11. Listar todos os produtos com 
       DESCRICAO terminando por “GOLD”.*/
SELECT * FROM TB_PRODUTO WHERE DESCRICAO LIKE '%GOLD';

/* 12. Listar todos os clientes que tenham a 
       letra A como segundo caractere do nome. */
SELECT * FROM TB_CLIENTE WHERE NOME LIKE '_A%';

/* 13. Listar todos os produtos que tenham
       “0” (ZERO) como segundo caractere do
       campo COD_PRODUTO. */
SELECT * 
FROM TB_PRODUTO 
WHERE COD_PRODUTO LIKE '_0%'

/* 14. Listar todos os produtos que tenham
       “A” como terceiro caractere do
       campo COD_PRODUTO.*/
SELECT * 
FROM TB_PRODUTO 
WHERE COD_PRODUTO LIKE '__A%'
--------------------------------------------------------------------------------------------
--DATA
--BUSCAR DATA E HORA ATUAL
SELECT GETDATE() AS DATA_ATUAL
--DIA DE UMA DATA
SELECT DAY(GETDATE()) AS DIA_ATUAL

SELECT DAY('2019/01/10') AS DIA
--MES DE UMA DATA
SELECT MONTH('2019/01/10')  AS MES
SELECT MONTH('2019/12/25')  AS MES

--ANO DE UMA DATA
SELECT YEAR('2019/01/10')  AS ANO
--EXERCICIO
--FAZER UMA QUERY PARA RETORNAR O NOME DO FUNCIONARIO, A DATA DE ADMISSAO, O DIA , O MES E O ANO DA DATA DE ADMISSAO
SELECT NOME
             ,DATA_ADMISSAO
			 ,DAY(DATA_ADMISSAO) AS DIA
			 ,MONTH(DATA_ADMISSAO) AS MES
			 ,YEAR(DATA_ADMISSAO) AS ANO
FROM TB_EMPREGADO 
-------------------------------------------------------------------------------------------------
--DARTEPART
--DIA DA SEMANA

SELECT DATEPART(WEEKDAY,GETDATE()) AS DIA_SEMANA
SELECT DATEPART(WEEKDAY,GETDATE()) AS DIA_SEMANA
--HORA
SELECT DATEPART(HOUR,GETDATE()) AS HORA
SELECT DATEPART(MINUTE ,GETDATE()) AS MINUTO
--DIA DO ANO
SELECT DATEPART(DAYOFYEAR,GETDATE()) AS DIA_ANO
--NOME MES EXTENSO
SELECT DATENAME(MONTH,GETDATE()) AS NOME_MES
--DATEADD
SELECT DATEADD(DAY,2,GETDATE()) AS ADD_DIA
SELECT DATEADD(MONTH,4,GETDATE()) AS ADD_MES
--DATEDIFF
SELECT DATEDIFF(YEAR,'2012/06/22',GETDATE()) AS IDADE
SELECT DATEDIFF(MONTH,'2012/06/22',GETDATE()) AS MESES
---------------------------------------------------------------------------------------------
--
SELECT DATEFROMPARTS (2013,12,25)
CREATE TABLE CONTROLE_DATA
(ANO CHAR(4)
,MES CHAR(2)
,DIA CHAR(2)
)

INSERT INTO CONTROLE_DATA 
VALUES('2018','12','20')
             ,('2019','01','2')

SELECT *
FROM CONTROLE_DATA
--FORMATO DATA
SELECT DATEFROMPARTS (ANO,MES,DIA)
FROM CONTROLE_DATA 
--FORMATO HORA
SELECT TIMEFROMPARTS (10,25,15,0,0)
--FORMATO DATA E HORA
SELECT DATETIMEFROMPARTS (2013,9,15,14,0,15,0)
SELECT DATETIME2FROMPARTS (2013,10,10,21,0,59,0,0)
--DATA HORA E MINUTO
SELECT SMALLDATETIMEFROMPARTS (2013,9,17,10,25)
--
SELECT EOMONTH (GETDATE())
SELECT EOMONTH ('2019/06/10') AS ULTIMO_DIA_MES

