-- Quest�es:

-- 1.      Selecione os nomes de funcion�rios e sal�rios, ordenados do maior para o menor, considerando quem ganha mais de 12000 reais;

SELECT 
      PRIMEIRO_NOME ||' ' || ULTIMO_NOME AS "NOME COMPLETO", 
      SALARIO  
  FROM FUNCIONARIOS
WHERE SALARIO > 12000
 ORDER BY SALARIO DESC;

-- 2.      Selecione o nome e ultimo nome e sal�rio dos funcion�rios que n�o tem sal�rios entre 5000 reais e 12000 reais, para assim identificar os maiores e menores sal�rios;

 SELECT 
      PRIMEIRO_NOME, 
      ULTIMO_NOME, 
      SALARIO  
  FROM FUNCIONARIOS
WHERE SALARIO NOT BETWEEN 5000 AND 12000;
 
-- 3.      Listar os funcion�rios que est�o nos departamentos 20 ou 50 ordernados pelo primeiro nome;

 SELECT
      PRIMEIRO_NOME
  FROM FUNCIONARIOS
WHERE ID_DEPARTAMENTO IN (20,50)
  ORDER BY PRIMEIRO_NOME;
 
-- 4.      Modificar a quest�o 2, trazendo os funcion�rios que possuem sal�rios entre 5000 reais E 12000 reais e que al�m disto estejam no departamento 20 ou 50. Imprima os cabe�alhos como �Nome� e �Sal�rio Atual�;

 SELECT 
      PRIMEIRO_NOME,
      ULTIMO_NOME, 
      SALARIO AS "Sal�rio Atual" 
  FROM FUNCIONARIOS
WHERE (SALARIO BETWEEN 5000 AND 12000)   
  AND ID_DEPARTAMENTO IN (20,50);

-- 5.      Selecione os funcion�rios que n�o recebem comiss�o. Imprima o nome e sobrenome;
 
SELECT 
    PRIMEIRO_NOME,
    ULTIMO_NOME
  FROM FUNCIONARIOS
WHERE PCT_COMISSAO IS NULL;

-- 6.      Selecione nome, data de admiss�o e sal�rio dos funcion�rios admitidos entre os MESES DE 03/2005 e 07/2005;

SELECT 
    PRIMEIRO_NOME AS "NOME",
    DT_ADMISSAO AS "DATA DE ADMISSAO"
  FROM FUNCIONARIOS
WHERE DT_ADMISSAO BETWEEN '01/03/2005' AND '31/07/2005';

--7.      Construa uma consulta utilizando uma vari�vel de substitui��o para que o usu�rio entre com um valor de sal�rio que sirva de base para listar a rela��o de funcion�rios que recebam mais que o valor informado.

SELECT
    PRIMEIRO_NOME,
    SALARIO
  FROM FUNCIONARIOS 
WHERE SALARIO > &SALARIO;
