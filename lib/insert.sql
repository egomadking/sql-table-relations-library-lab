/*begin series*/
INSERT INTO series (id, author_id, subgenre_id, title)
VALUES (1, 1, 1, "The Two Tacos");
INSERT INTO series (id, author_id, subgenre_id, title)
VALUES (2, 2, 2, "The Bridal Mirror");
/*end series*/
/*begin sub-genres*/
INSERT INTO subgenres (id, name) VALUES (1, "Food Poetry");
INSERT INTO subgenres (id, name) VALUES (2, "Romantic Comedy");
/*end sub-genres*/
/*begin authors*/
INSERT INTO authors (id, name) VALUES (1, "Tina Savage");
INSERT INTO authors (id, name) VALUES (2, "Symponie LaVarge");
/*end authors*/
/*begin books*/
INSERT INTO books (id, title, year, series_id)
VALUES (1, "Ground Meat Rush", 1993, "1");
INSERT INTO books (id, title, year, series_id)
VALUES (2, "Not Yesterday's Cheese", 1994, "1");
INSERT INTO books (id, title, year, series_id)
VALUES (3, "Lettuce Go In Peace", 1995, "1");
/*end book series 1*/
INSERT INTO books (id, title, year, series_id)
VALUES (4, "Anitcommitment", 2007, "2");
INSERT INTO books (id, title, year, series_id)
VALUES (5, "Veiled Threats", 2009, "2");
INSERT INTO books (id, title, year, series_id)
VALUES (6, "Sharded Vows", 2011, "2");
/*end book series 2*/
/*end books*/
/*begin characters*/
/*begin chars series 1*/
INSERT INTO characters (id, name, species, motto, author_id)
  VALUES
    (1,"Ralph","human","eatz",1),
    (2,"Sarah","human","meatz",1),
    (3,"Frank","human","cheesy",1),
    (4,"Arnold","human","cronch",1);
/*end chars series 1*/
/*begin chars series 2*/
INSERT INTO characters (id, name, species, motto, author_id)
  VALUES
    (5,"Sam","human","No",2),
    (6,"Timothy","human","Please",2),
    (7,"Reggie","human","No way",2),
    (8,"Smith","human","'Till death- sure.",2);
/*end chars series 2*/
/*end characters*/
/*begin char_book relations*/
INSERT INTO character_books (id, book_id, character_id)
  VALUES 
    (1,1,1), (2,2,1), (3,3,1),
    (4,1,2), (5,2,2), (6,3,2),
    (7,1,3), (8,1,4),
    (9,4,5),(10,5,5),(11,6,5),
    (12,4,6),(13,5,6),(14,6,6),
    (15,4,7),(16,4,8);
/*end char_book relations*/
