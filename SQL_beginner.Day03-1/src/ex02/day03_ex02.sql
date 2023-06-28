SELECT pizza_name, price, pz.name AS pizzeria_name FROM menu AS m
JOIN person_order AS po ON po.menu_id = menu_id
JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
EXCEPT
SELECT pizza_name, price, pz.name AS pizzeria_name FROM menu AS m
JOIN person_order AS po ON po.menu_id = menu_id
JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
WHERE m.id = po.menu_id
ORDER BY 1, 2