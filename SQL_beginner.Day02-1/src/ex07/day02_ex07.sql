SELECT pz.name AS pizzeria_name FROM
(SELECT * FROM person AS p WHERE p.name = 'Dmitriy') AS p
JOIN (SELECT * FROM person_visits AS pv WHERE visit_date = '2022-01-08') AS pv
ON p.id = pv.person_id
JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
JOIN (SELECT * FROM menu AS m WHERE m.price < 800) AS m
ON pz.id = m.pizzeria_id