
INSERT INTO Breweries (name, country, created_at) 
VALUES 
('La Chouffe', 'Belgium', '1985-08-12'),
('Guinness', 'Ireland', '1759-09-24'),
('Heineken', 'Netherlands', '1864-02-15'),
('Budweiser', 'USA', '1876-03-28'),
('Carlsberg', 'Denmark', '1847-11-10'),
('Pilsner Urquell', 'Czech Republic', '1842-10-05'),
('Stella Artois', 'Belgium', '1926-07-13'),
('Chimay', 'Belgium', '1862-12-25'),
('Duvel', 'Belgium', '1871-12-31'),
('Leffe', 'Belgium', '1152-01-01'),
('Westmalle', 'Belgium', '1836-06-06'),
('Rochefort', 'Belgium', '1595-01-01'),
('Orval', 'Belgium', '1931-03-21'),
('Westvleteren', 'Belgium', '1838-06-12'),
('Achel', 'Belgium', '1852-10-15'),
('Rodenbach', 'Belgium', '1821-01-01'),
('Boon', 'Belgium', '1975-01-01'),
('Lindemans', 'Belgium', '1822-01-01'),
('Cantillon', 'Belgium', '1900-01-01'),
('De Cam', 'Belgium', '1997-01-01'),
('3 Fonteinen', 'Belgium', '1887-01-01'),
('Oud Beersel', 'Belgium', '1882-01-01'),
('Hanssens', 'Belgium', '1896-01-01'),
('Tilquin', 'Belgium', '2009-01-01'),
('Girardin', 'Belgium', '1845-01-01'),
('Bosteels', 'Belgium', '1791-01-01'),
('Van Steenberge', 'Belgium', '1784-01-01'),
('De Halve Maan', 'Belgium', '1856-01-01'),
('Huyghe', 'Belgium', '1906-01-01'),
('Van Honsebrouck', 'Belgium', '1865-01-01');

INSERT INTO Categories (name)
VALUES 
('Lager'),
('Ale'),
('Stout'),
('Porter'),
('Pilsner'),
('IPA'),
('Sour'),
('Wheat'),
('Belgian'),
('Trappist'),
('Barleywine'),
('Bock'),
('Doppelbock'),
('Tripel'),
('Quadrupel'),
('Gueuze'),
('Lambic'),
('Fruit Beer');

INSERT INTO Ingredients (name) 
VALUES
('eau'),
('malt'),
('houblon'),
('levure'),
('sucre'),
('épices'),
('extraits de plantes');

INSERT INTO Users (first_name, last_name, email, password, created_at)
VALUES 
('John', 'Doe', 'john.doe@gmail.com', 'password', '2021-01-01'),
('Jane', 'Smith', 'jane.smith@hotmail.com', 'mypassword12', '2022-03-15'),
('Alice', 'Johnson', 'alice.johnson@yahoo.com', 'secure123456', '2020-11-20'),
('Bob', 'Williams', 'bob.williams@gmail.com', 'bob321000987', '2023-07-10'),
('Charlie', 'Brown', 'charlie.brown@outlook.com', 'charlie12abc', '2022-06-25'),
('David', 'Davis', 'david.davis@icloud.com', 'davidd123456', '2021-09-17'),
('Emily', 'Miller', 'emily.miller@yahoo.com', 'emilyabc987', '2023-01-05'),
('Frank', 'Moore', 'frank.moore@hotmail.com', 'frank2020222', '2020-02-10'),
('Grace', 'Taylor', 'grace.taylor@gmail.com', 'grace321123', '2022-09-30'),
('Hannah', 'Wilson', 'hannah.wilson@outlook.com', 'hannah2027aa', '2023-04-12');

INSERT INTO Beers (name, description, abv, category_id, brewery_id)
VALUES 
('La Chouffe Blonde', 'A strong, spicy and fruity blonde beer.', 8.0, 9, 1),
('Guinness Draught', 'A rich and creamy stout with roasted malt flavors.', 4.2, 3, 2), 
('Heineken Lager', 'A crisp, clean, and refreshing lager.', 5.0, 1, 3),
('Budweiser', 'A classic American lager with a smooth finish.', 5.0, 1, 4), 
('Carlsberg Pilsner', 'A well-balanced Danish pilsner.', 5.0, 5, 5),
('Pilsner Urquell', 'The original golden pilsner with a balanced bitterness.', 4.4, 5, 6), 
('Stella Artois', 'A premium Belgian lager with a mild bitterness.', 5.2, 1, 7), 
('Chimay Blue', 'A strong dark ale with fruity and caramel notes.', 9.0, 10, 8),
('Duvel', 'A strong golden ale with a subtle hop character.', 8.5, 9, 9),
('Leffe Blond', 'A smooth and subtle Belgian blonde ale.', 6.6, 9, 10); 

INSERT INTO Beers (name, description, abv, category_id, brewery_id)
VALUES 
('La Chouffe Houblon', 'A strong IPA with a Chouffe twist.', 9.0, 6, 1),
('Guinness Foreign Extra Stout', 'A bolder, richer version of the classic stout.', 7.5, 3, 2),
('Heineken Silver', 'A lighter, smoother Heineken.', 4.0, 1, 3),
('Bud Light', 'A light lager with a crisp taste.', 4.2, 1, 4),
('Carlsberg Elephant', 'A strong and full-bodied lager.', 7.2, 13, 5),
('Pilsner Urquell Dark', 'A dark version of the classic pilsner.', 4.9, 5, 6),
('Chimay Red', 'A fruity and copper-colored Trappist beer.', 7.0, 10, 8),
('Duvel Tripel Hop', 'A hoppier version of the classic Duvel.', 9.5, 14, 9);

-- Ajout de bières pour la brasserie 1 (La Chouffe)
INSERT INTO Beers (name, description, abv, category_id, brewery_id)
VALUES 
('La Chouffe Blonde', 'A strong, spicy and fruity blonde beer.', 8.0, 6, 1),
('La Chouffe Houblon', 'A strong IPA with a Chouffe twist.', 9.0, 6, 1),
('La Chouffe Soleil', 'A refreshing Belgian blonde ale.', 6.2, 6, 1),
('La Chouffe Cherry', 'A fruity beer with a hint of cherry.', 5.5, 6, 1),
('La Chouffe Grand Cru', 'A strong and fruity amber beer.', 10.0, 6, 1);

-- Ajout de bières pour la brasserie 2 (Guinness)
INSERT INTO Beers (name, description, abv, category_id, brewery_id)
VALUES
('Guinness Original', 'A classic Irish stout with roasted malt flavors.', 4.2, 3, 2),
('Guinness Nitro IPA', 'A smooth, nitrogen-infused IPA with fruity hops.', 6.0, 3, 2),
('Guinness Nitro Coffee', 'A creamy stout infused with coffee flavors.', 6.5, 3, 2),
('Guinness Red Ale', 'A balanced and malty red ale.', 5.0, 3, 2),
('Guinness Nitro Stout', 'A rich, creamy stout with chocolate undertones.', 4.8, 3, 2);

--  "La Chouffe Blonde"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(21, 1, 60.00), 
(21, 3, 30.00), 
(21, 4, 10.00); 

-- "Guinness Draught"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(22, 1, 80.00), 
(22, 3, 15.00), 
(22, 4, 5.00); 

-- "Heineken Lager"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(23, 1, 70.00),  
(23, 3, 20.00), 
(23, 4, 10.00); 


-- "Carlsberg Pilsner"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(25, 1, 90.00),  -- eau
(25, 2, 8.00),   -- malt
(25, 3, 2.00);   -- houblon

-- "Pilsner Urquell"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(26, 1, 89.00),  -- eau
(26, 2, 9.00),   -- malt
(26, 3, 2.00);   -- houblon


-- "Stella Artois"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(27, 1, 88.00),  -- eau
(27, 2, 10.00),  -- malt
(27, 3, 2.00);   -- houblon


-- "Chimay Blue"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(28, 1, 88.00), 
(28, 2, 10.00),   
(28, 3, 2.00),
(28, 4, 2.00);  

-- "Duvel"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(29, 1, 85.00), 
(29, 2, 10.00),   
(29, 3, 3.00),
(29, 4, 2.00);

-- "Leffe Blond"
INSERT INTO Beer_Ingredients (beer_id, ingredient_id, percentage)
VALUES 
(30, 1, 80.00), 
(30, 2, 10.00),   
(30, 3, 5.00),
(30, 4, 5.00);

INSERT INTO Favorites (user_id, beer_id)
VALUES 
(1, 21),
(2, 21),
(2, 30),
(3, 20),
(4, 24),
(5, 30),
(6, 21),
(7, 22),
(8, 21),
(9, 27),
(10, 30),
(10, 29),
(10, 21);

INSERT INTO Reviews (user_id, beer_id, rating, comment)
VALUES 
(1, 25, 4, 'A well-balanced and refreshing pilsner, perfect for a hot day.');

INSERT INTO Reviews (user_id, beer_id, rating, comment)
VALUES 
(2, 28, 5, 'A rich, flavorful ale with complex notes of fruit and caramel.');

INSERT INTO Reviews (user_id, beer_id, rating, comment)
VALUES 
(1, 21, 4, 'A smooth and flavorful blonde beer with a hint of spice.'),
(2, 22, 5, 'A rich stout with deep roasted flavors, absolutely delicious!'),
(3, 23, 3, 'A refreshing lager but a bit too light for my taste.'),
(4, 24, 4, 'A classic lager with a smooth finish, quite enjoyable.'),
(5, 25, 3, 'An okay pilsner, but not as good as some others I have tried.'),
(6, 26, 4, 'A crisp and balanced pilsner with just the right bitterness.'),
(7, 27, 5, 'A smooth and clean Belgian lager, always a great choice.'),
(8, 28, 4, 'A nice strong ale with fruity and caramel notes, very satisfying.'),
(9, 29, 5, 'An amazing golden ale, perfect balance of hops and sweetness.'),
(10, 30, 4, 'A smooth and subtle blonde ale, a great Belgian classic.'),
(1, 31, 5, 'A fantastic IPA with strong hop flavor and a nice balance of bitterness.'),
(2, 32, 4, 'A bold stout with rich flavors, a nice variation of the classic.'),
(3, 33, 3, 'A lighter Heineken, smooth but lacks some depth.'),
(4, 34, 4, 'A great light lager, crisp and refreshing for easy drinking.'),
(5, 35, 5, 'A strong and full-bodied lager, perfect for those who enjoy something heavier.'),
(6, 36, 3, 'A decent dark pilsner, but I prefer the classic version.'),
(7, 37, 4, 'A flavorful Trappist beer with hints of fruitiness and a smooth finish.'),
(8, 38, 5, 'A rich and deep beer, perfect for a cold evening.'),
(9, 39, 4, 'A great twist on the classic Duvel, very hoppy and refreshing.'),
(10, 40, 3, 'A nice IPA but a little too bitter for my taste.'),
(1, 41, 4, 'A solid lager, nice malty sweetness with a crisp finish.'),
(2, 42, 5, 'A rich stout with intense flavors of coffee and chocolate.'),
(3, 43, 4, 'A smooth and light lager, good for everyday drinking.'),
(4, 44, 4, 'A refreshing and light lager, perfect for a hot day.'),
(5, 45, 3, 'Not bad but a bit too light for my liking.'),
(6, 46, 4, 'A well-balanced dark ale, rich in flavor with a nice finish.'),
(7, 47, 5, 'A robust IPA with bold hop flavors, one of my favorites.'),
(8, 48, 4, 'A great ale with a hint of sweetness and fruitiness.'),
(9, 49, 5, 'An amazing beer with an excellent balance of bitterness and sweetness.');

INSERT INTO Reviews (user_id, beer_id, rating, comment)
VALUES 
(4, 24, 2, 'A classic American lager with a smooth finish.'),
(5, 25, 4, 'A well-balanced and refreshing pilsner, perfect for a hot day.'),
(6, 26, 5, 'The original golden pilsner with a balanced bitterness.'),
(7, 27, 4, 'A premium Belgian lager with a mild bitterness.'),
(8, 28, 5, 'A strong dark ale with fruity and caramel notes.'),
(9, 29, 3, 'A strong golden ale with a subtle hop character.'),
(10, 30, 2, 'A smooth and subtle Belgian blonde ale.');

INSERT INTO Pictures (beer_id, user_id, url)
VALUES 
(21, 1, 'https://cdn.pixabay.com/photo/2017/06/24/23/41/beer-2439237_1280.jpg'),
(22, 2, 'https://images.pexels.com/photos/1552630/pexels-photo-1552630.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(24, 4, 'https://images.pexels.com/photos/1009068/pexels-photo-1009068.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(25, 5, 'https://images.pexels.com/photos/1557686/pexels-photo-1557686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(26, 6, 'https://images.pexels.com/photos/2574851/pexels-photo-2574851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(27, 7, 'https://images.pexels.com/photos/2707972/pexels-photo-2707972.jpeg'),
(28, 8, 'https://images.pexels.com/photos/1267151/pexels-photo-1267151.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(29, 9, 'https://images.pexels.com/photos/1269042/pexels-photo-1269042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(30, 10, 'https://images.pexels.com/photos/237774/pexels-photo-237774.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');

INSERT INTO Pictures (beer_id, user_id, url)
VALUES
(31, 1, 'https://images.pexels.com/photos/1552630/pexels-photo-1552630.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(32, 2, 'https://images.pexels.com/photos/1009068/pexels-photo-1009068.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(33, 3, 'https://images.pexels.com/photos/1557686/pexels-photo-1557686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(34, 4, 'https://images.pexels.com/photos/2574851/pexels-photo-2574851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(35, 5, 'https://images.pexels.com/photos/2707972/pexels-photo-2707972.jpeg'),
(36, 6, 'https://images.pexels.com/photos/1267151/pexels-photo-1267151.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(37, 7, 'https://images.pexels.com/photos/1269042/pexels-photo-1269042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(38, 8, 'https://images.pexels.com/photos/237774/pexels-photo-237774.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(39, 9, 'https://images.pexels.com/photos/1552630/pexels-photo-1552630.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(40, 10, 'https://images.pexels.com/photos/1009068/pexels-photo-1009068.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');

