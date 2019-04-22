SELECT CONCAT(
           'Teaching people to code for ',
           UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
           ' seconds'
         );

SELECT CONCAT(
           'Number of years I''ve been alive: ',
           (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('1970-08-29')) / (60 * 60 * 24 * 365)
         -- ' ',
         -- UNIX_TIMESTAMP()
         );

USE employees;
SELECT CONCAT(first_name, ' ', last_name) AS first_name FROM employees;

SELECT DATEDIFF(CURDATE(), '2019-03-10');

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10

SELECT DISTINCT first_name
FROM employees;

SELECT first_name
FROM employees
GROUP BY first_name DESC;

SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;

SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, COUNT(*) AS number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;

USE adlister_db;
describe ads;
show create table ads;

SELECT email
FROM users
       JOIN ads ON ads.user_id = users.id
WHERE ads.title LIKE '%bike%';

SELECT categories.name
FROM categories
       JOIN cat_ad ON categories.id = cat_ad.cat_id
       JOIN ads ON cat_ad.ad_id = ads.id
WHERE ads.title LIKE '%truck%';

SELECT categories.name AS 'Category', title AS 'Title', description AS 'Description'
FROM ads
       JOIN cat_ad ON ads.id = cat_ad.ad_id
       JOIN categories ON cat_ad.cat_id = categories.id
WHERE categories.name = 'Personal';

SELECT title AS 'Title', description AS 'Descripton'
FROM ads
       JOIN users ON ads.user_id = users.id
WHERE users.username LIKE 'Mindy';

select * from ads;
