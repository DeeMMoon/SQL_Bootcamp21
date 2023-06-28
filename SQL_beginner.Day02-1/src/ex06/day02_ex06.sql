SELECT m.pizza_name, pz.name AS pizzeria_name FROM
person_order AS po
JOIN (SELECT * FROM person AS p WHERE p.name in ('Denis', 'Anna')) AS p ON p.id = po.person_id
JOIN menu AS m ON po.menu_id = m.id
JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
ORDER BY 1,2