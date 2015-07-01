/* 
Matthew Sokol
Week 1 Assignment for SQL Bridge
*/

/* Question 1 - 
Show the total number of flights. */

select count(*) as "Total Number of Flights"
from flights;

/*Question 2 - 
Show the total number of flights by airline (carrier). */

select carrier, count(*) as "Total Number of Flights"
from flights
Group by carrier;

/*Question 3 - 
Show all of the airlines, ordered by number of flights in descending order. */

select carrier, count(*) as "Total Number of Flights"
from flights
Group by carrier
Order by count(*) DESC;

/* Question 4 - 
Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order. */

select carrier, count(*) as "Total Number of Flights"
from flights
Group by carrier
Order by count(*) DESC
limit 5;

/* Question 5 -
Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order. */

select carrier, count(*) as "Total Number of Flights Over 1,000 Miles"
from flights
where distance >=1000
Group by carrier
Order by count(*) DESC
limit 5;

/* Question 6 -
Create a questions that (a) uses data from the flights database, and 
(b) requires aggregation to answer it, and write down both the question, and the query that answers the question. */

/* My question - Since I am originally from Albany, NY I would like to know the total number of flights going to Albany,
by carrier and origin, ordered by the number of flights from that origin. */

select carrier, origin, count(*) as "Total Number of Flights Going to Albany"
from flights
where dest = 'ALB'
Group by carrier, origin
Order by count(*) DESC;

/* The result showed only one carrier flying to my hometown!!! */


