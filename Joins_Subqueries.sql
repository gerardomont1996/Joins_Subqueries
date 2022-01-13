--Question 1

select first_name ,last_name ,district
from address
join customer 
on address.address_id = customer.customer_id
where distirct= 'Texas';

--answer

--Question 2

select first_name,last_name,amount
from customer
join payment
on customer.customer_id = customer.customer_id
group by customer.first_name, customer.last_name,payment.amount
having amount > 6.99;

--Question 3

SELECT customer_id
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 175
ORDER BY SUM(amount) DESC;

-- Question 4
select city_id,city 
from city
group by city
where city ='Nepal';

--Question 5
select staff_id , count(payment_id)
from payment
group by staff_id 
order by staff_id;
--answer= staff_id 2 with 7,304

--Question 6
select film_id
from film_actor
group by film_id
order by film_id;

select * from film_actor;

--Question 7 
select first_name,last_name,actor_id
from actor
join film_actor
on actor.actor_id=film.film_id
group by actor_id,first_name,last_name;


--Question 8
select district
from address 
join city 
on address.address_id = city.city_id 
join customer
on city.city_id = address.address_id
group by district
order by  count(*) > 5 asc;



