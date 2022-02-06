# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
People.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!


# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!


values = { name: "Christopher Nolan" }
people1 = People.new(values)
people1.save
values = { name: "Christian Bale" }
people2 = People.new(values)
people2.save
values = { name: "Michael Caine" }
people3 = People.new(values)
people3.save
values = { name: "Liam Neeson" }
people4 = People.new(values)
people4.save
values = { name: "Katie Holmes" }
people5 = People.new(values)
people5.save
values = { name: "Gary Oldman" }
people6 = People.new(values)
people6.save
values = { name: "Heath Ledger" }
people7 = People.new(values)
people7.save
values = { name: "Aaron Eckhart" }
people8 = People.new(values)
people8.save
values = { name: "Maggie Gyllenhaal" }
people9 = People.new(values)
people9.save
values = { name: "Tom Hardy" }
people10 = People.new(values)
people10.save
values = { name: "Joseph Gordon-Levitt" }
people11 = People.new(values)
people11.save
values = { name: "Anne Hathaway" }
people12 = People.new(values)
people12.save

values = { title: "Batman Begins", year_released: 2005, rated: "PG-13", person_id: people1.id }
movie1 = Movie.new(values)
movie1.save

values = { title: "The Dark Knight", year_released: 2008, rated: "PG-13", person_id: people1.id  }
movie2 = Movie.new(values)
movie2.save

values = { title: "The Dark Knight Rises", year_released: 2012, rated: "PG-13", person_id: people1.id  }
movie3 = Movie.new(values)
movie3.save

values = { movie_id: movie1.id, person_id: people2.id, character_name: "Bruce Wayne" }
role1 = Role.new(values)
role1.save
values = { movie_id: movie1.id, person_id: people3.id, character_name: "Alfred" }
role2 = Role.new(values)
role2.save
values = { movie_id: movie1.id, person_id: people4.id, character_name: "Ra's Al Ghul" }
role3 = Role.new(values)
role3.save
values = { movie_id: movie1.id, person_id: people5.id, character_name: "Rachel Dawes" }
role4 = Role.new(values)
role4.save
values = { movie_id: movie1.id, person_id: people6.id, character_name: "Commissioner Gordon" }
role5 = Role.new(values)
role5.save

values = { movie_id: movie2.id, person_id: people2.id, character_name: "Bruce Wayne" }
role6 = Role.new(values)
role6.save
values = { movie_id: movie2.id, person_id: people7.id, character_name: "Joker" }
role7 = Role.new(values)
role7.save
values = { movie_id: movie2.id, person_id: people8.id, character_name: "Harvey Dent" }
role8 = Role.new(values)
role8.save
values = { movie_id: movie2.id, person_id: people3.id, character_name: "Alfred" }
role9 = Role.new(values)
role9.save
values = { movie_id: movie2.id, person_id: people9.id, character_name: "Rachel Dawes" }
role10 = Role.new(values)
role10.save

values = { movie_id: movie3.id, person_id: people2.id, character_name: "Bruce Wayne" }
role11 = Role.new(values)
role11.save
values = { movie_id: movie3.id, person_id: people6.id, character_name: "Commissioner Gordon" }
role12 = Role.new(values)
role12.save
values = { movie_id: movie3.id, person_id: people10.id, character_name: "Bane" }
role13 = Role.new(values)
role13.save
values = { movie_id: movie3.id, person_id: people11.id, character_name: "John Blake" }
role14 = Role.new(values)
role14.save
values = { movie_id: movie3.id, person_id: people12.id, character_name: "Selina Kyle" }
role15 = Role.new(values)
role15.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
