-- Questões:
--1. Insira os seguintes funcionários:
-- Id_funcionario Primeiro_nome Ultimo_nome Dt_admissao Id_cargo Id_departamento  Email              salario
-- 207            Samuel        Arruda      10-05-14    AD_VP    60               sarruda@emp.com.br 15411,00
-- 208            Lucia         Alves       17-04-10    IT_PROG  250              lalves@emp.com.br  9847,00
-- 209            Beta          Britto      07-12-11    PU_MAN   140              bbritto@emp.com.br 10100,00
-- 210            Fernanda      Guido       21-07-14    AD_VP    60               fguido@emp.com.br  15974,00
-- 211            Diogenes      Costa       07-01-14    PU_CLERK 190              dcosta@emp.com.br  3401,00

INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO,PRIMEIRO_NOME,ULTIMO_NOME,DT_ADMISSAO,ID_CARGO,ID_DEPARTAMENTO,EMAIL,SALARIO)
VALUES 
  (207,'Samuel','Arruda','10-05-14','AD_VP',60,'sarruda@emp.com.br',15411.00);
INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO,PRIMEIRO_NOME,ULTIMO_NOME,DT_ADMISSAO,ID_CARGO,ID_DEPARTAMENTO,EMAIL,SALARIO)
VALUES
  (208,'Lucia','Alves','17-04-10','IT_PROG',250,'lalves@emp.com.br',9847.00); 
INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO,PRIMEIRO_NOME,ULTIMO_NOME,DT_ADMISSAO,ID_CARGO,ID_DEPARTAMENTO,EMAIL,SALARIO)
VALUES  
  (209,'Beta','Britto','07-12-11','PU_MAN',140,'bbritto@emp.com.br',10100.00);
INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO,PRIMEIRO_NOME,ULTIMO_NOME,DT_ADMISSAO,ID_CARGO,ID_DEPARTAMENTO,EMAIL,SALARIO)
VALUES  
  (210,'Fernanda','Guido','21-07-14 ','AD_VP',60,'fguido@emp.com.br',15974.00);
INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO,PRIMEIRO_NOME,ULTIMO_NOME,DT_ADMISSAO,ID_CARGO,ID_DEPARTAMENTO,EMAIL,SALARIO)
VALUES
  (211,'Diogenes','Costa','07-01-14 ','PU_CLERK',190,'dcosta@emp.com.br',3401.00);
  
-- 2. Consulte os dados inseridos, consultando os funcionários com ID maior ou igual
-- que 207;

SELECT * FROM FUNCIONARIOS WHERE ID_FUNCIONARIO >= 207;

-- 3. Atualize os dados do funcionário ID 210:

UPDATE FUNCIONARIOS
SET ULTIMO_NOME='Guiddo',TELEFONE='7451-4474',PCT_COMISSAO=0.1
WHERE ID_FUNCIONARIO=210;

-- 4. Consulte o funcionário modificado, pelo ID=210;

SELECT * FROM FUNCIONARIOS WHERE ID_FUNCIONARIO=210;

-- 5. Torne a inserção e atualização de dados permanente;

COMMIT;

-- 6. Insira o seguinte registro:
--Id_funcionario Primeiro_nome Ultimo_nome Dt_admissao Id_cargo Id_departamento Email             salario
--212            Carla         Diaz        15-08-12    AD_VP               190  ccosta@emp.com.br 16001,00

INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO,PRIMEIRO_NOME,ULTIMO_NOME,DT_ADMISSAO,ID_CARGO,ID_DEPARTAMENTO,EMAIL,SALARIO)
VALUES (212,'Carla','Diaz','15-08-12','AD_VP',190,'ccosta@emp.com.br',16001.00);

-- 7. Crie o SAVEPOINT T1;

SAVEPOINT T1;

-- 8. Insira o seguinte registro:
-- Id_funcionario Primeiro_nome Ultimo_nome Dt_admissao Id_cargo Id_departamento Email           salario
-- 213            Moaci         Ribeiro     10-02-15    AD_VP    190             mrib@emp.com.br 17501,00

INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO,PRIMEIRO_NOME,ULTIMO_NOME,DT_ADMISSAO,ID_CARGO,ID_DEPARTAMENTO,EMAIL,SALARIO)
VALUES (213,'Moaci','Ribeiro','10-02-15','AD_VP',190,'mrib@emp.com.br',17501.00);

-- 9. Crie o SAVEPOINT T2;

SAVEPOINT T2;

-- 10. Consulte os registros inseridos;

SELECT * FROM FUNCIONARIOS WHERE ID_FUNCIONARIO >=212;

-- 11. Apague o funcionário ID 213;

DELETE FROM FUNCIONARIOS WHERE ID_FUNCIONARIO = 213;

-- 12. Execute ROLLBACK TO T1;

ROLLBACK TO SAVEPOINT T1;

-- 13. Consulte novamente os registros inseridos;

SELECT * FROM FUNCIONARIOS WHERE ID_FUNCIONARIO >=212;

-- 14. Confirme as modificações e Consulte os registros inseridos.

COMMIT;
SELECT * FROM FUNCIONARIOS WHERE Id_funcionario=212;
SELECT * FROM FUNCIONARIOS WHERE Id_funcionario=213;