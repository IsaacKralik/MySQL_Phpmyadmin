select STATUS from orders GROUP BY STATUS

SELECT DISTINCT  status FROM orders

SELECT status, COUNT(*) FROM orders GROUP BY STATUS

SELECT status, count(*) FROM orders group by status HAVING status != "shipped" 

SELECT contactlastname, contactfirstname FROM customers order BY  contactlastname

SELECT contactlastname, contactfirstname FROM customers order BY  contactlastname DESC

SELECT contactlastname, contactfirstname FROM customers order by contactLastName DESC, contactFirstName ASC

SELECT jobTitle FROM employees GROUP BY jobTitle

SELECT jobTitle, COUNT(*) FROM employees GROUP BY jobTitle

SELECT jobTitle FROM employees GROUP BY jobTitle order by jobtitle desc

SELECT jobTitle, COUNT(jobTitle) FROM employees GROUP BY jobTitle ORDER BY jobTitle DESC

SELECT customerNumber, AVG(amount) FROM payments GROUP BY customerNumber HAVING customerNumber = '103';

SELECT customerNumber, AVG(amount) FROM payments GROUP BY customerNumber 

EX 1) SELECT * from offices group by city order by city ASC;
SELECT * from offices group by city order by OfficeCode

EX 2)  SELECT * from products GROUP BY productline HAVING productline != "PLANE"

EX 3) SELECT city, count(*) from customers GROUP BY city ORDER BY city DESC

Aula 05 

CREATE TABLE alunos(
codigo int(4) AUTO_INCREMENT,
nome varchar(30) NOT NULL,
email varchar(50),
PRIMARY KEY (codigo)
);

alter table alunos add column turma int after email; 
alter table alunos add column telefone int after turma; 

alter table alunos drop COLUMN email

CREATE TABLE turma(
codigo int(4) AUTO_INCREMENT,
nome varchar(30) NOT NULL,
PRIMARY KEY (codigo)
);

alter table alunos add CONSTRAINT fk_turma FOREIGN KEY (turma) REFERENCES turma(codigo)

INSERT INTO turma (nome) VALUES ('CC');
INSERT INTO turma (nome) VALUES ('SI');

INSERT INTO alunos (nome, telefone, turma) VALUES ('MARIO', '12341234', '1');
INSERT INTO alunos (nome, telefone, turma) VALUES ('LUIZ', '56785678', '2');
INSERT INTO alunos (nome, telefone, turma) VALUES ('Isaac', '12341234', '1');
INSERT INTO alunos (nome, telefone, turma) VALUES ('Luan', '56785678', '2');
INSERT INTO alunos (nome, telefone ) VALUES ('Joao', '12341234', );
INSERT INTO alunos (nome, telefone) VALUES ('Pedro', '56785678', );

