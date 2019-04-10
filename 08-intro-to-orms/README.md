1 ruby, 2 orm, 3 crud, 4-5 sql
## Object Relational Mapper (ORM)

+ Definition:
A way of mapping OOP into a Sql database


## Active Record Pattern
Each table should be a class
Each row is an instance
Each column is attribute








# CRUD REVIEW
What are the four ways we can interact with data?

* Create
SQL: INSERT INTO songs VALUE title;
Ruby: Song.new(title)

* Read
SQL: SELECT * FROM songs;
Ruby: Song.all

SQL: SELECT * FROM songs WHERE id = ?;
Ruby: Song.all.find do |song|
  song.id == query_id
end


* Update
SQL: UPDATE songs SET title = new_title WHERE title=title;
Ruby: song.title = new_title

* Destroy
SQL: DELETE FROM songs WHERE title = ?;
DROP TABLE songs;
Ruby: Song.all.clear
Song.all.delete(song)


## Domain Modeling and SQL Review

Draw out what your schema (structure of your tables and columns) would be for the following domains. Consider what tables are needed, what columns belong on which tables, and where the foreign keys belong.

1. Books and Authors where each book has a single author. Books should have a title and authors should have a name

Q: Write the SQL to find all books written by a certain author given the author's id.
Q: Write the SQL to find all books written by a certain author given the author's name.



2. Books and Authors where each book can have one or multiple authors. Books should have a title and authors should have a name


Q: Write the SQL to find all books written by a certain author given their name


3. Twitter where Tweets can have Tags (i.e. '#fun', '#hottake', '#tbt'). A tweet can have multiple tags, many tweets can be tagged with the same tag. Tweets have a message and user_id; tags have a name.


Q: Write the SQL to find all the tweets tagged '#tbt'


4. After completing the questions above, is there a rule you can determine about which table the foreign key belongs on given two associated tables?



## Lecture Notes
INSERT INTO table (column) VALUES (value)
SELECT last_insert_rowid()
UPDATE table SET column = value WHERE condition
DELETE FROM table WHERE condition
