/*Question : Write a SQL Query to find the movie_title and name of director (first and last names combined) who directed a movie that casted a role as ‘SeanMaguire’.

Output Schema:

director_name,movie_title
NOTE:

Output column name has to match the given output schema.
Any name is the concatenation(without any delimiter) of first and last name if present
(E.g. if director_first_name is ‘Alfred’ and director_last_name is ‘Hitchcock’ then director_name is ‘AlfredHitchcock’)
Example Output:

director_name,movie_title
AlfredHitchcock,Vertigo
Schema diagram is attached in the repository as Q001
Answer:
*/

SELECT CONCAT(d.director_first_name, d.director_last_name) AS director_name, m.movie_title
FROM movies_cast c
JOIN movies m ON c.movie_id = m.movie_id
JOIN movies_directors i ON m.movie_id = i.movie_id
JOIN directors d ON i.director_id = d.director_id
WHERE c.role = 'SeanMaguire';