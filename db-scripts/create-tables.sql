CREATE TABLE Breweries (
    brewery_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    country VARCHAR(50) NOT NULL,
    created_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Beers (
    beer_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    abv FLOAT(2) NOT NULL,
    created_at DATE DEFAULT CURRENT_DATE,
    brewery_id INT NOT NULL,
    category_id INT NOT NULL,
    CONSTRAINT fk_brewery_id FOREIGN KEY (brewery_id) REFERENCES Breweries(brewery_id),
    CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- AJOUTER UN NOUVEL ATTRIBUT POUR LA TABLE BEERS : RATING (INT)
ALTER TABLE Beers
ADD COLUMN rating INT CHECK (rating >= 0 AND rating <= 5);

-- AJOUTER DES RATINGS POUR LES BIÈRES EXISTANTES
UPDATE Beers
SET rating = 5
WHERE beer_id = 21;

UPDATE Beers
SET rating = 3
WHERE beer_id = 22;

UPDATE Beers
SET rating = 5
WHERE beer_id = 23;

UPDATE Beers
SET rating = 2
WHERE beer_id = 24;

UPDATE Beers
SET rating = 1
WHERE beer_id = 25;

UPDATE Beers
SET rating = 4
WHERE beer_id = 26;

UPDATE Beers
SET rating = 3
WHERE beer_id = 27;

UPDATE Beers
SET rating = 5
WHERE beer_id = 28;

UPDATE Beers
SET rating = 2
WHERE beer_id = 29;

UPDATE Beers
SET rating = 5
WHERE beer_id = 30;

UPDATE Beers
SET rating = 5
WHERE beer_id = 31;

UPDATE Beers
SET rating = 3
WHERE beer_id = 32;

UPDATE Beers
SET rating = 5
WHERE beer_id = 33;

UPDATE Beers
SET rating = 2
WHERE beer_id = 34;

UPDATE Beers
SET rating = 1
WHERE beer_id = 35;

UPDATE Beers
SET rating = 4
WHERE beer_id = 36;

UPDATE Beers
SET rating = 3
WHERE beer_id = 37;

UPDATE Beers
SET rating = 5
WHERE beer_id = 38;

UPDATE Beers
SET rating = 5
WHERE beer_id = 39;

UPDATE Beers
SET rating = 5
WHERE beer_id = 40;

UPDATE Beers
SET rating = 5
WHERE beer_id = 41;

UPDATE Beers
SET rating = 5
WHERE beer_id = 42;

UPDATE Beers
SET rating = 5
WHERE beer_id = 43;

UPDATE Beers
SET rating = 5
WHERE beer_id = 44;

UPDATE Beers
SET rating = 1
WHERE beer_id = 45;

UPDATE Beers
SET rating = 4
WHERE beer_id = 46;

UPDATE Beers
SET rating = 3
WHERE beer_id = 47;

UPDATE Beers
SET rating = 5
WHERE beer_id = 48;

UPDATE Beers
SET rating = 2
WHERE beer_id = 49;


CREATE TABLE Beer_Ingredients (
    beer_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    percentage NUMERIC(5,2) NOT NULL CHECK (percentage >= 0 AND percentage <= 100),
    PRIMARY KEY (beer_id, ingredient_id),
    CONSTRAINT fk_beer_id FOREIGN KEY (beer_id) REFERENCES Beers(beer_id),
    CONSTRAINT fk_ingredient_id FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id)
);

CREATE TABLE Favorites (
    user_id INT NOT NULL,
    beer_id INT NOT NULL,
    PRIMARY KEY (user_id, beer_id),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CONSTRAINT fk_beer_id FOREIGN KEY (beer_id) REFERENCES Beers(beer_id)
);

CREATE TABLE Reviews (
    review_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    beer_id INT NOT NULL,
    rating INT NOT NULL CHECK (rating >= 0 AND rating <= 5),
    comment TEXT,
    created_at DATE DEFAULT CURRENT_DATE,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CONSTRAINT fk_beer_id FOREIGN KEY (beer_id) REFERENCES Beers(beer_id)
);

CREATE TABLE Pictures (
    picture_id SERIAL PRIMARY KEY,         
    beer_id INT NOT NULL,                  
    user_id INT NOT NULL,                
    url VARCHAR(255) NOT NULL,            
    created_at DATE DEFAULT CURRENT_DATE, 
    CONSTRAINT fk_beer_id FOREIGN KEY (beer_id) REFERENCES Beers(beer_id),  
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id) 
);

