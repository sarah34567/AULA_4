CREATE DATABASE cine_senai_max;

USE cine_senai_max;

CREATE TABLE filmes (
id_filme int,
Titulo VARCHAR(60), 
Genero VARCHAR(45), 
Duracao INT,
Ano_lancamento INT,
Preco_aluguel DOUBLE,
primary key(id_filme)

);

drop table filmes ;
INSERT INTO filmes VALUES (1,'Tropa de elite', 'Ação', '115', '2007', '5.99');

select * from filmes;

#Localize o nome e gênero do filme com id 6
SELECT Titulo, Gênero FROM filmes where id_filme=6;

#Localize o nome e ano de lançamento do
SELECT Titulo,Ano_lancamento as 'Ano de lançamento' FROM filmes where id_filme =33;

#Localização e exclusão do id 73
select * from filmes where id_filme =73;
delete from filmes where id_filme=73;  

#Atualização do Genero do filme Rio 2
select * from filmes where Titulo = 'Rio 2';
UPDATE filmes SET Genero = 'Animação' WHERE id_filme=71;

#Atualização do Preço do filme Tropa de elite
UPDATE filmes SET Preco_aluguel = Preco_aluguel * 1.1 WHERE id_filme=1;
select * from filmes where id_filme=1;

#Consulte o titulo, gênero e preço do aluguel dos filmes que são de Drama OU Comédia
SELECT titulo as 'Título', genero as 'Gênero', preco_aluguel as 'Preço do Aluguel' FROM filmes WHERE genero='Drama' or genero='Comédia';

#Comando mysql consulte titulo e ano lançamento dos filmes lançados entre 2001 E 2005
SELECT titulo as 'Título', ano_lancamento as 'Ano de lançamento' FROM filmes WHERE ano_lancamento >2001 and ano_lancamento <2005;

#Consulte titulo, ano lançamento e gênero dos filmes de Drama ou Animação que foram lançados depois de 2009
SELECT titulo as 'Título', ano_lancamento as 'Ano de lançamento',genero as 'Gênero' FROM filmes WHERE (genero='Drama' OR genero='Animação')  AND ano_lancamento > 2009;

#Consulte titulo, ano lançamento e gênero dos filmes de Ação e Aventura ou Mistério e Suspense que foram lançados entre 2005 e 2010
SELECT titulo as 'Título', ano_lancamento as 'Ano de lançamento',genero as 'Gênero' 
FROM filmes
WHERE (genero = 'Ação e Aventura') OR (genero = 'Mistério e Suspense') AND  ano_lancamento >2005 AND ano_lancamento <2010;


#Comando mysql para consulte titulo, ano lançamento e gênero dos filmes de Ação e Aventura ou Mistério e Suspense que foram lançados entre 2005 e 2010 com preço de aluguel maior que 3 reais
SELECT titulo as 'Título', ano_lancamento as 'Ano de lançamento',genero as 'Gênero',preco_aluguel as 'Preço do Aluguel'
FROM filmes
WHERE( genero = 'Ação e Aventura') OR(genero = 'Mistério e Suspense') AND (ano_lancamento > 2005 AND ano_lancamento < 2010) AND preco_aluguel  > 3;

SELECT * from filmes ;

set sql_safe_updates = 0;

#Aumente em 10% o preço de aluguel dos filmes que possuem o preço de aluguel entre 4 e 5 reais
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.1 WHERE preco_aluguel >= 4 AND preco_aluguel <= 5;
SELECT preco_aluguel FROM filmes WHERE preco_aluguel >= 4 AND preco_aluguel <= 5;

#Aumente em 15% o preço de aluguel dos filmes que possuem o preço de aluguel entre 2 e 3 reais.
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.15 WHERE preco_aluguel >= 2 AND preco_aluguel <= 3;
SELECT * FROM filmes  WHERE preco_aluguel >= 2 AND preco_aluguel <= 3;

#Filmes lançados entre 2001 e 2003 que tiveram um desconto de 10% no preço de aluguel
UPDATE filmes SET preco_aluguel = preco_aluguel * 0.9 WHERE preco_aluguel >= 2001 AND preco_aluguel <= 2003;
SELECT * FROM filmes WHERE preco_aluguel >= 2001 AND preco_aluguel <= 2003;

#Filmes de comédia lançados em 2001 terão um desconto de 15%
UPDATE filmes SET  preco_aluguel = preco_aluguel * 0.85 WHERE genero = 'Comédia' AND  preco_aluguel = 2001;
select * from filmes WHERE genero = 'Comédia' AND  preco_aluguel = 2001;

CREATE TABLE  atores (
id_ator INT, PRIMARY KEY(id_ator),
nome_ator VARCHAR(60),
ano_nascimento INT,
nacionalidade VARCHAR(20),
sexo VARCHAR(10)
);

INSERT INTO atores VALUES (0,'Wagner Moura', 1976, 'Brasileira', 'Masculino');

select * from atores;








