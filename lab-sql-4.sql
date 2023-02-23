use sakila;

# 1. Get film ratings.

select rating from film;

# 2. Get release years.

select release_year from film;

# 3. Get all films with ARMAGEDDON in the title.

select title from film
where title like '%ARMAGEDDON%';

select film_id, title from film 	# including film_id gives a last row with nulls and an asterisk at the front
where title regexp 'ARMAGEDDON';

# 4. Get all films with APOLLO in the title

select title from film
where title like '%APOLLO%';

# 5. Get all films the title of which ends with APOLLO

select title from film
where title like '%APOLLO';

# 6. Get all films with word DATE in the title.

select title from film
where title regexp 'DATE';

# 7. Get 10 films with the longest title.

select title from film
order by length(title) desc
limit 10;

# 8. Get the 10 longest films.

select title from film
order by length desc
limit 10;

# 9. How many films include Behind the Scenes content?

select count(film_id) from film
where special_features regexp 'Behind the Scenes';

# 10. List films ordered by release year and title in alphabetical order.

select title, release_year from film
order by release_year asc, title asc;