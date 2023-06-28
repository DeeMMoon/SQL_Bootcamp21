SELECT p.name FROM person AS p
JOIN person_order AS po ON p.id = po.person_id
JOIN menu AS m ON po.menu_id = m.id
WHERE m.pizza_name IN ('mushroom pizza', 'pepperoni pizza') 
AND p.address in ('Moscow', 'Samara') AND p.gender = 'male'
ORDER BY 1 DESC