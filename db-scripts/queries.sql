
--Lister les bières par taux d'alcool, de la plus légère à la plus forte.
SELECT name, abv 
FROM Beers
ORDER BY abv ASC;

--Afficher le nombre de bières par catégorie.
SELECT Categories.name, COUNT(Beers.category_id) AS "Number of beers"
FROM Beers
JOIN Categories ON Beers.category_id = Categories.category_id
GROUP BY Categories.name;

--Trouver toutes les bières d'une brasserie donnée
SELECT Beers.name, Breweries.name AS "Brewery"
FROM Beers
JOIN Breweries ON Beers.brewery_id = Breweries.brewery_id
WHERE Breweries.name = 'La Chouffe';

-- Lister les utilisateurs et le nombre de bières qu'ils ont ajoutées à leurs favoris.
select users.first_name, COUNT(Favorites.beer_id) as "list_of_favorites"
from Users 
join Favorites on users.user_id = favorites.user_id
group by users.first_name ; 

--Ajouter une nouvelle bière à la base de données.
INSERT INTO Beers (name, description, abv, category_id, brewery_id)
VALUES 
('Rituel', 'produced with additional hops that give it a long, intense aftertaste: for this reason, tasting it is a veritable ritual.', 9.0, 14, 10);

-- Afficher les bières et leurs brasseries, ordonnées par pays de la brasserie.
select beers.name as "beer", breweries.name as "brewery", breweries.country as "country" 
from beers 
join breweries on beers.brewery_id = breweries.brewery_id 
order by breweries.country;

--Lister les bières avec leurs ingrédients.
SELECT Beers.name AS "Beer", 
       Ingredients.name AS "Ingredient"
FROM Beers
JOIN Beer_Ingredients ON Beers.beer_id = Beer_Ingredients.beer_id
JOIN Ingredients ON Beer_Ingredients.ingredient_id = Ingredients.ingredient_id
ORDER BY Beers.name;

--Afficher les brasseries et le nombre de bières qu'elles produisent, pour celles ayant plus de 5 bières.
SELECT Breweries.name AS "Brewery", COUNT(Beers.brewery_id) AS "Number of beers"
FROM Beers
JOIN Breweries ON Beers.brewery_id = Breweries.brewery_id
GROUP BY Breweries.name
HAVING COUNT(Beers.brewery_id) > 5;



