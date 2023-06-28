SELECT p.name FROM person AS p
JOIN person_order AS po ON p.id = po.person_id
JOIN menu AS m ON po.menu_id = m.id
WHERE p.gender = 'female' AND m.pizza_name = 'cheese pizza'
INTERSECT
SELECT p.name FROM person AS p
JOIN person_order AS po ON p.id = po.person_id
JOIN menu AS m ON po.menu_id = m.id
WHERE p.gender = 'female' AND m.pizza_name = 'pepperoni pizza'
ORDER BY 1