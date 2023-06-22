
 -- 1.  Testar se a consulta SELECT id_cargo cargo salario_minimo FROM cargo est� correta. Corrigir caso n�o esteja para trazer os dados da tabela de CARGOS;



 SELECT id_cargo, cargo ,salario_minimo FROM cargos;

 

--2.      Construir uma consulta que retorne todos os atributos da tabela PAISES;

 
select * from paises;
 

 

--3.      Quais os erros da consulta:

 
SELECT id_funcionario, ultimo_nome

Sal x 12 Salario Anual FROM funcion�rios



-Faltou a virgula depois do ultimo_nome

-Para multiplica��o est� usando "x", que est� errado pois o correto � "*"

-Ali�s Salario Anual n�o est� dentro das aspas, por ser uma palavra composta � obrigado


--4.      Corrigir a consulta anterior;

 SELECT id_funcionario, ultimo_nome,
 Salario * 12 "Salario Anual"  FROM funcionarios



 

--5.      Descreva a tabela de LOCALIZACOES;

 
describe LOCALIZACOES
 

 

--6.      Selecione os seguintes dados de localiza��es, Estado, cidades e cep;

 select Estado,cidade,cep from  LOCALIZACOES

 

 

--7.      Selecione os cargos existentes na tabela de funcion�rios sem duplicar;

 
select distinct(id_cargo) from funcionarios;
 

 

--8.      Selecione os dados dos FUNCION�RIOS com o seguinte leiaute:

    --PRIMEIRO NOME junto com o ULTIMO NOME <= NOME,
    --SALARIO <= �ltimo Sal�rio,
    --Dt_admissao <= Data de Admiss�o

 
 select PRIMEIRO_NOME || '' || ULTIMO_NOME as NOME,
        SALARIO as "�ltimo Sal�rio",
        Dt_admissao as "Data de Admiss�o" 
   from funcionarios;