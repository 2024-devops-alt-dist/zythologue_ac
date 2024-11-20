# Zythologue - Base de Données pour Amateurs de Bière 🍺

## Contexte du projet
Le projet Zythologue est une base de données dédiée aux amateurs de bière. 
Cette base permet de centraliser et d'explorer des informations sur des bières, des brasseries, des utilisateurs, des critiques (reviews), et bien plus encore. 
Les utilisateurs peuvent ajouter leurs bières préférées, noter et commenter, et découvrir des bières en fonction de divers critères (taux d'alcool, ingrédients, brasserie, etc.).

En amont, les modèles Merise [disponible ici en pdf et dans le repo](https://github.com/2024-devops-alt-dist/zythologue_ac/blob/main/Zythologue.jpg)

## Environnement
Technologies utilisées :  
**SGBD** : PostgreSQL pour la gestion de la base de données relationnelle [image de docker hub](https://hub.docker.com/_/postgres)   
**Docker** : Utilisation de Docker et Docker Compose pour déployer l'environnement dans un conteneur PostgreSQL. 🐳  
**DBeaver** : Ce client SQL permet de se connecter à la base de données PostgreSQL et d'exécuter les scripts SQL nécessaires pour la création et la manipulation de la base de données.

## Pour lancer l'environnement :  
- cloner le repo
- executer :
  ```docker-compose up -d``` 🚀

## Voici les infos pour se connecter à la base de données, à saisir dans DBeaver (présents dans le fichier docker-compose.yml) 

- Host : localhost
- Port : 5432
- POSTGRES_DB: db2
- POSTGRES_USER: senga
- POSTGRES_PASSWORD: megapassword

Une fois configuré, vous pourrez exécuter les scripts pour créer la base de données et les tables.

## Organisation du repo   
Dans le repo, dans le dossier db-scripts, se trouvent :
- le dictionnaire des données au format json
- les règles de gestion au format txt
- le fichier create-tables.sql :
  contient tous les scripts pour créer les tables 
- le fichier datas.sql :
  contient les scipts pour peupler les tables
- le fichier queries.sql :
  contient les requetes à executer

  exemple d'execution de requete :
```
SELECT name, abv 
FROM Beers
ORDER BY abv ASC;
```

```
resultat attendu : 
name                        |abv |
----------------------------+----+
Heineken Silver             | 4.0|
Guinness Draught            | 4.2|
Guinness Original           | 4.2|
Bud Light                   | 4.2|
Pilsner Urquell             | 4.4|
Guinness Nitro Stout        | 4.8|
Pilsner Urquell Dark        | 4.9|
Carlsberg Pilsner           | 5.0|
Guinness Red Ale            | 5.0|
Heineken Lager              | 5.0|
Budweiser                   | 5.0|
Stella Artois               | 5.2|
La Chouffe Cherry           | 5.5|
Guinness Nitro IPA          | 6.0|
La Chouffe Soleil           | 6.2|
Guinness Nitro Coffee       | 6.5|
Leffe Blond                 | 6.6|
Chimay Red                  | 7.0|
Carlsberg Elephant          | 7.2|
Guinness Foreign Extra Stout| 7.5|
La Chouffe Blonde           | 8.0|
La Chouffe Blonde           | 8.0|
Duvel                       | 8.5|
Chimay Blue                 | 9.0|
La Chouffe Houblon          | 9.0|
La Chouffe Houblon          | 9.0|
Rituel                      | 9.0|
Duvel Tripel Hop            | 9.5|
La Chouffe Grand Cru        |10.0|
```


# le trigger 
après l'exécution de la requête suivante pour vérifier que l'ABV (taux d'alcool) est compris entre 0 et 20 avant l'ajout de chaque bière. : 
```
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

```
puis l'ajout de la bière suivante par exemple : 
```
INSERT INTO Beers (name, description, abv, category_id, brewery_id)
VALUES 
('bière de taré', 'hytidine coma guaranteed, perfect for forgetting.', 30, 14, 10);
```
on obtient le message d'erreur suivant : 
```
ERROR:  ABV must be between 0 and 20 
```
