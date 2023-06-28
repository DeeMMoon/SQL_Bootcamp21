SELECT pz.name, COUNT(*) AS count_of_orders, 
		ROUND(avg(m.price),2) AS average_price,
		MAX(m.price) AS max_price, MIN(m.price) AS min_price
FROM menu AS m
JOIN person_order AS po ON po.menu_id = m.id
JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
GROUP BY pz.name
ORDER BY 1
