SELECT p.address, pz.name, COUNT(*) AS count_of_orders FROM person_order AS po
JOIN person AS p ON p.id = po.person_id
JOIN menu AS m ON po.menu_id = m.id
JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
GROUP BY p.address, pz.name
ORDER BY 1, 2