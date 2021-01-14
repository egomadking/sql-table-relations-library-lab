def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  WHERE length(motto) = (SELECT max(length(motto)) FROM characters);"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species) AS count
  FROM characters
  GROUP BY species
  ORDER BY count DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  INNER JOIN series
    ON series.author_id = authors.id
  INNER JOIN subgenres
    ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN authors
    ON series.author_id = authors.id
  INNER JOIN characters
    ON authors.id = characters.author_id
  WHERE characters.species = 'human'
  GROUP BY series.title
  ORDER BY (SELECT COUNT(characters.species)) DESC 
  LIMIT 1;"
end

# querying selects all of the character names 
# AND the number of books they have appeared in,
# grouped by character name, 
# in descending order by number of books 
# and 
# ascending order by character name

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id) as count
  FROM characters
  INNER JOIN character_books
    ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY count DESC, characters.name ASC
  "
end
