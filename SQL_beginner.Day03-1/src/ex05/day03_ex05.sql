(SELECT pz.name AS pizzeria_name FROM pizzeria AS pz
JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
JOIN person AS p ON p.id = pv.person_id
WHERE p.name = 'Andrey')
EXCEPT
(SELECT pz.name AS pizzeria_name FROM pizzeria AS pz
JOIN menu AS m ON m.pizzeria_id = pz.id
JOIN person_order AS po ON m.id = po.menu_id
JOIN person AS p ON p.id = po.person_id
WHERE p.name = 'Andrey')