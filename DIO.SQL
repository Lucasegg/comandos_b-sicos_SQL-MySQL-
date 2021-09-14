CREATE TABLE pessoas(
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(20) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoa(nome, nascimento) VALUES('Lucas', '1988/06/25')
INSERT INTO pessoa(nome, nascimento) VALUES('Aline', '1988/12/13')
INSERT INTO pessoa(nome, nascimento) VALUES('Bruna', '1990/04/12')
INSERT INTO pessoa(nome, nascimento) VALUES('Joao', '1989/01/05')

******************
/* UPDATE*/

/* Alterando dado por id*/
UPDATE pessoa SET nome='Lucas Silva' where id=1;
/* Alterando dado via coluna nome */
UPDATE pessoa SET nome='Lucas Gomes' where nome='Lucas Silva';

*************************************************************
/* DELETE */

/* SEMPRE VERIFICAR A INFORMAÇÃO ANTES DE DELETAR */
SELECT * FROM pessoa WHERE id=4;
/*UMA VEZ CONFIRMADA, AGORA SIM DELETANDO */
DELETE * FROM pessoa WHERE id=4;

**************************************************************
/* ORDER BY */

/*ORDENANDO POR NOME DE FORMA CRESCENTE */
SELECT * FROM pessoa ORDER BY nome;
/* ORDENANDO DE FORMA DECRESCENTE */
SELECT * FROM pessoa ORDER BY nome DESC;

/*ALTER TABLE*/
ALTER TABLE 'pessoa' ADD 'genero' VARCHAR(1) NOT NULL AFTER 'nascimento';

UPDATE pessoa SET genero='M' WHERE id=1;
UPDATE pessoa SET genero='F' WHERE id=2;
UPDATE pessoa SET genero='F' WHERE id=3;
UPDATE pessoa SET genero='M' WHERE id=4;

/* Group By*/
/*Aplicando o Group By*/
/*contar quantas pessoas há e de quais generos dentro do agrupamento*/
SELECT COUNT(id), genero FROM pessoa GROUP BY genero;


