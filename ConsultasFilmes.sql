-- 1)Busca o nome e ano dos filmes
Select 
f.Nome,
f.Ano
from Filmes f



-- 2)Busca o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select 
f.Nome,
f.Ano,
f.Duracao
from Filmes f
Order by f.Ano asc

-- 3)Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select * from Filmes where Nome = 'De Volta para o Futuro'


-- 4)Buscar os filmes lançados em 1997
Select * from Filmes where Ano = 1997

-- 5) Buscar os filmes lançados APÓS o ano 2000
Select * from Filmes where Ano > 2000


-- 6) Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select * from Filmes where Duracao > 100 and Duracao < 150 Order by Duracao asc


-- 7) Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
Filmes.Ano,
COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Filmes.Ano
Order by Quantidade desc

-- 8) Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select * from Atores where Genero = 'M'

-- 9) Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select * from Atores where Genero = 'F' Order by PrimeiroNome asc

-- 10) Buscar o nome do filme e o gênero
Select
f.Nome,
g.Genero
from FilmesGenero fg
inner join Filmes f on f.Id = fg.IdFilme
inner join Generos g on g.Id = fg.IdGenero

-- 11) Buscar o nome do filme e o gênero do tipo "Mistério"
Select
f.Nome,
g.Genero
from FilmesGenero fg
inner join Filmes f on f.Id = fg.IdFilme
inner join Generos g on g.Id = fg.IdGenero
where g.Genero = 'Mistério'

-- 12) Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select 
f.Nome,
a.PrimeiroNome,
a.UltimoNome,
ef.Papel
from Filmes f
inner join ElencoFilme ef on ef.IdFilme = f.Id
inner join Atores a on a.Id = ef.IdAtor