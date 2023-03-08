use sakila;

# 1 Get film ratings.

SELECT DISTINCT rating from film; 

# 2 Get release years.

SELECT DISTINCT release_year from film;

# 3 Get all films with ARMAGEDDON in the title.

SELECT *
FROM film
WHERE title LIKE ("%ARMAGEDDON%");  

# 4 Get all films with APOLLO in the title

SELECT *
FROM film
WHERE title LIKE ("%APOLLO%"); 

# 5 Get all films which title ends with APOLLO.

SELECT *
FROM film
WHERE title LIKE ("%APOLLO");

# 6 Get all films with word DATE in the title.

SELECT *     
FROM film
WHERE title LIKE "DATE %"
 or title LIKE "% DATE%";
 
 # 7 Get 10 films with the longest title.

SELECT title, length(title) from film 
ORDER BY length(title) DESC
LIMIT 10;

# 8 Get 10 the longest films.

SELECT title, length from film 
ORDER BY length DESC
LIMIT 10;

# 9 How many films include Behind the Scenes content?

SELECT title, special_features from film    
WHERE special_features = "Behind the Scenes";

SELECT COUNT(special_features)  
FROM film    
WHERE special_features = "Behind the Scenes";

# 10 List films ordered by release year and title in alphabetical order.

SELECT *    #Question 10
FROM film
ORDER BY release_year, title ASC;











