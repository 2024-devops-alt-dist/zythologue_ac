
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

-- Lister les bières qui n'ont pas encore été ajoutées aux favoris par aucun utilisateur.
select beers.name as "name"
from beers 
left join favorites on beers.beer_id = favorites.beer_id 
where favorites.user_id is null; 

--Trouver les bières favorites communes entre deux utilisateurs.
SELECT 
    beers.name AS "Beer Name", STRING_AGG(users.first_name, ', ') AS "Users"
FROM Beers
JOIN Favorites ON Beers.beer_id = Favorites.beer_id
JOIN Users ON Favorites.user_id = Users.user_id
GROUP BY beers.name
HAVING COUNT(users.user_id) > 1;

--Afficher les brasseries dont les bières ont une moyenne de notes supérieure à une certaine valeur.
SELECT 
    Breweries.name AS "Brewery Name",
    ROUND(AVG(Reviews.rating), 2) AS "Average Rating" -- Limite à 2 décimales
FROM 
    Breweries
JOIN 
    Beers ON Breweries.brewery_id = Beers.brewery_id
JOIN 
    Reviews ON Beers.beer_id = Reviews.beer_id
GROUP BY 
    Breweries.name
HAVING 
    AVG(Reviews.rating) > 2.5
ORDER BY 
    "Average Rating" DESC;


--Mettre à jour les informations d'une brasserie.
UPDATE breweries
SET name = 'Brasserie d''Achouffe'
WHERE brewery_id = 1;


--Supprimer les photos d'une bière en particulier.
--dabord, vérifier quelles photos sont associées à la bière
SELECT * FROM pictures
WHERE beer_id = 33;

--ensuite, supprimer les photos
DELETE FROM pictures
WHERE beer_id = 33;

--Écrire un déclencheur (trigger) pour vérifier que l'ABV (taux d'alcool) est compris entre 0 et 20 avant l'ajout de chaque bière.
CREATE OR REPLACE FUNCTION check_abv()
RETURNS TRIGGER AS $$ -- Indique que cette fonction est un trigger
BEGIN
    IF NEW.abv < 0 OR NEW.abv > 20 THEN
        RAISE EXCEPTION 'ABV must be between 0 and 20';
    END IF;
    RETURN NEW; -- On retourne la nouvelle ligne, elle est valide
END;
$$ LANGUAGE plpgsql; -- Utilisation du langage PL/pgSQL

CREATE TRIGGER check_abv
BEFORE INSERT OR UPDATE ON Beers
FOR EACH ROW
EXECUTE FUNCTION check_abv();

