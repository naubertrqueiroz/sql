-- Questões:

-- 1.      Selecione os nomes de funcionários e salários, ordenados do maior para o menor, considerando quem ganha mais de 12000 reais;

SELECT 
      PRIMEIRO_NOME ||' ' || ULTIMO_NOME AS "NOME COMPLETO", 
      SALARIO  
  FROM FUNCIONARIOS
WHERE SALARIO > 12000
 ORDER BY SALARIO DESC;

-- 2.      Selecione o nome e ultimo nome e salário dos funcionários que não tem salários entre 5000 reais e 12000 reais, para assim identificar os maiores e menores salários;

 SELECT 
      PRIMEIRO_NOME, 
      ULTIMO_NOME, 
      SALARIO  
  FROM FUNCIONARIOS
WHERE SALARIO NOT BETWEEN 5000 AND 12000;
 
-- 3.      Listar os funcionários que estão nos departamentos 20 ou 50 ordernados pelo primeiro nome;

 SELECT
      PRIMEIRO_NOME
  FROM FUNCIONARIOS
WHERE ID_DEPARTAMENTO IN (20,50)
  ORDER BY PRIMEIRO_NOME;
 
-- 4.      Modificar a questão 2, trazendo os funcionários que possuem salários entre 5000 reais E 12000 reais e que além disto estejam no departamento 20 ou 50. Imprima os cabeçalhos como “Nome” e “Salário Atual”;

 SELECT 
      PRIMEIRO_NOME,
      ULTIMO_NOME, 
      SALARIO AS "Salário Atual" 
  FROM FUNCIONARIOS
WHERE (SALARIO BETWEEN 5000 AND 12000)   
  AND ID_DEPARTAMENTO IN (20,50);

-- 5.      Selecione os funcionários que não recebem comissão. Imprima o nome e sobrenome;
 
SELECT 
    PRIMEIRO_NOME,
    ULTIMO_NOME
  FROM FUNCIONARIOS
WHERE PCT_COMISSAO IS NULL;

-- 6.      Selecione nome, data de admissão e salário dos funcionários admitidos entre os MESES DE 03/2005 e 07/2005;

SELECT 
    PRIMEIRO_NOME AS "NOME",
    DT_ADMISSAO AS "DATA DE ADMISSAO"
  FROM FUNCIONARIOS
WHERE DT_ADMISSAO BETWEEN '01/03/2005' AND '31/07/2005';

--7.      Construa uma consulta utilizando uma variável de substituição para que o usuário entre com um valor de salário que sirva de base para listar a relação de funcionários que recebam mais que o valor informado.

SELECT
    PRIMEIRO_NOME,
    SALARIO
  FROM FUNCIONARIOS 
WHERE SALARIO > &SALARIO;
