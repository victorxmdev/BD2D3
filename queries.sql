# Banco de dados II (Atividade 1: Criar 30 consultas.)
-- VICTOR GABRIEL SANTOS MAGALHÃES GU302038X
-- THAYNARA OLIVEIRA BARBOSA DA SILVA GU 3022081

USE sakila; 

-- #1 Classificando o primeiro nome dos atores em ordem ascendente

SELECT 
	first_name,
    last_name
FROM
	actor
ORDER BY 
	first_name ASC;
    
-- #2 Classificando o primeiro nome dos atores em ordem descendente

SELECT 
	first_name,
    last_name
FROM
	actor
ORDER BY 
	first_name DESC;
    
-- #3 Classificando o sobrenome dos atores em ordem ascendente

SELECT 
	first_name,
    last_name
FROM
	actor
ORDER BY
	last_name ASC;
    
-- #4 Classificando o sobrenome dos atores em ordem descendente

SELECT 
	first_name,
    last_name
FROM
	actor
ORDER BY
	last_name DESC;
    
-- #5 Classificando o distrito dos endereços em ordem ascendente

SELECT
	address, district, city_id, postal_code
FROM
	address
ORDER BY
	district ASC;
    
-- #6 Classificando o distrito dos endereços em ordem ascendente

SELECT
	address, district, city_id, postal_code
FROM
	address
ORDER BY
	district DESC;
    
-- #7 Classificando o código postal dos endereços em ordem ascendente

SELECT
	address_id, address, district, city_id, postal_code
FROM
	address
ORDER BY
	postal_code ASC;
    
-- #8 Classificando categorias em ordem ascendente

SELECT
	*
FROM
	category
ORDER BY
	name ASC;
    
-- #9 Classificando as cidades em ordem ascendente

SELECT
	*
FROM
	city
ORDER BY
	city ASC;
    
-- #10 Classificando os países por ordem ascendente

SELECT
	*
FROM
	country
ORDER BY
	country ASC; 
    
-- #11 Classificando o primeiro nome dos clientes em ordem ascendente

SELECT
	*
FROM
	customer
ORDER BY
	first_name ASC;
    
-- #12 Classificando os titulos dos filmes em ordem ascendente

SELECT
	*
FROM
	film
ORDER BY
	title ASC;

-- #13 Classificando os filmes pela taxa de aluguel em ordem ascendente

SELECT
	*
FROM
	film
ORDER BY
	rental_rate ASC;

-- #14 Classificando os filmes pelo tamanho em ordem ascendente

SELECT
	*
FROM
	film
ORDER BY
	length ASC;
    
-- #15 Classificando os filmes pelo custo de reposição em ordem ascendente

SELECT
	*
FROM
	film
ORDER BY
	replacement_cost ASC;
    
-- #16 Buscando ACE GOLFINGER usando WHERE

SELECT
	*
FROM
	film
WHERE
	title='ACE GOLDFINGER';
    
-- #17 Classificando as linguagens em ordem ascendente

SELECT
	*
FROM
	language
ORDER BY
	name ASC;
    
-- #18 Unindo a tabela "customers" e "customers_list"

SELECT 
    customer.customer_id,
    first_name,
    last_name,
    email
FROM
    customer
LEFT JOIN customer_list ON 
    customer_list.name = customer.last_name;
    
-- #19 Selecionando as informações da tabela ator, agrupando por ID dos atores

SELECT
  *
FROM
    actor
GROUP BY
  actor_id;

-- #20 Agrupando as tabelas "film" e "category"

SELECT
  COUNT(F.film_id) AS ID,
  C.name as CATEGORIA
FROM
  film F, category C
WHERE
  F.film_id = C.category_id
GROUP BY
	F.film_id;
    
-- #21 Filtrando e retornando o ator que participa do filme de acordo que o título termina com "a"

SELECT 
   title,
   first_name,
   last_name
FROM
    actor_info, film
WHERE
    title LIKE '%a'
ORDER BY 
	first_name;
    
-- #22 Filtrando e retornando o ator que participa do filme de acordo que o título termina com "b"

SELECT 
   title,
   first_name,
   last_name
FROM
    actor_info, film
WHERE
    title LIKE '%b'
ORDER BY 
	first_name;
    
-- #23 Filtrando e retornando o ator que participa do filme de acordo que o título termina com "c"

SELECT 
   title,
   first_name,
   last_name
FROM
    actor_info, film
WHERE
    title LIKE '%c'
ORDER BY 
	first_name;
    
-- #24 Filtrando atores por ID entre 1 e 10

SELECT 
	actor_id,
    first_name, 
    last_name
FROM
    actor_info
WHERE
    actor_id BETWEEN 1 AND 10
ORDER BY 	
	actor_id;
    
-- #25 Filtrando atores por ID entre 11 e 20

SELECT 
	actor_id,
    first_name, 
    last_name
FROM
    actor_info
WHERE
    actor_id BETWEEN 11 AND 20
ORDER BY 	
	actor_id;
    
-- #26 Filtrando atores por ID entre 21 e 30

SELECT 
	actor_id,
    first_name, 
    last_name
FROM
    actor_info
WHERE
    actor_id BETWEEN 21 AND 30
ORDER BY 	
	actor_id;
    
-- #27 Classificando categorias em ordem descendente

SELECT
	*
FROM
	category
ORDER BY
	name DESC;
    
-- #28 Classificando as cidades em ordem descendente

SELECT
	*
FROM
	city
ORDER BY
	city DESC;
    
-- #29 Classificando os países por ordem descendente

SELECT
	*
FROM
	country
ORDER BY
	country DESC; 
    
-- #30 Classificando o primeiro nome dos clientes em ordem descendente

SELECT
	*
FROM
	customer
ORDER BY
	first_name DESC;