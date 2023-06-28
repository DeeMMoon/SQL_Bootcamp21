((SELECT pz.name AS pizzeria_name FROM pizzeria AS pz
JOIN menu AS m ON pz.id = m.pizzeria_id
JOIN person_order AS po ON po.menu_id = m.id
JOIN person AS p ON p.id = po.person_id
WHERE p.gender = 'male')
EXCEPT
(SELECT pz.name AS pizzeria_name FROM pizzeria AS pz
JOIN menu AS m ON pz.id = m.pizzeria_id
JOIN person_order AS po ON po.menu_id = m.id
JOIN person AS p ON p.id = po.person_id
WHERE p.gender = 'female'))
UNION
((SELECT pz.name AS pizzeria_name FROM pizzeria AS pz
JOIN menu AS m ON pz.id = m.pizzeria_id
JOIN person_order AS po ON po.menu_id = m.id
JOIN person AS p ON p.id = po.person_id
WHERE p.gender = 'female')
EXCEPT
(SELECT pz.name AS pizzeria_name FROM pizzeria AS pz
JOIN menu AS m ON pz.id = m.pizzeria_id
JOIN person_order AS po ON po.menu_id = m.id
JOIN person AS p ON p.id = po.person_id
WHERE p.gender = 'male'))
ORDER BY 1