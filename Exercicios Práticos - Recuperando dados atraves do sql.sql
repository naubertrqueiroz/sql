
 -- 1.  Testar se a consulta SELECT id_cargo cargo salario_minimo FROM cargo está correta. Corrigir caso não esteja para trazer os dados da tabela de CARGOS;



 SELECT id_cargo, cargo ,salario_minimo FROM cargos;

 

--2.      Construir uma consulta que retorne todos os atributos da tabela PAISES;

 
select * from paises;
 

 

--3.      Quais os erros da consulta:

 
SELECT id_funcionario, ultimo_nome

Sal x 12 Salario Anual FROM funcionários



-Faltou a virgula depois do ultimo_nome

-Para multiplicação está usando "x", que está errado pois o correto é "*"

-Aliás Salario Anual não está dentro das aspas, por ser uma palavra composta é obrigado


--4.      Corrigir a consulta anterior;

 SELECT id_funcionario, ultimo_nome,
 Salario * 12 "Salario Anual"  FROM funcionarios



 

--5.      Descreva a tabela de LOCALIZACOES;

 
describe LOCALIZACOES
 

 

--6.      Selecione os seguintes dados de localizações, Estado, cidades e cep;

 select Estado,cidade,cep from  LOCALIZACOES

 

 

--7.      Selecione os cargos existentes na tabela de funcionários sem duplicar;

 
select distinct(id_cargo) from funcionarios;
 

 

--8.      Selecione os dados dos FUNCIONÁRIOS com o seguinte leiaute:

    --PRIMEIRO NOME junto com o ULTIMO NOME <= NOME,
    --SALARIO <= Último Salário,
    --Dt_admissao <= Data de Admissão

 
 select PRIMEIRO_NOME || '' || ULTIMO_NOME as NOME,
        SALARIO as "Último Salário",
        Dt_admissao as "Data de Admissão" 
   from funcionarios;