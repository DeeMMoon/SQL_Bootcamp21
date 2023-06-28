SELECT quer1.name, COALESCE (quer1.count, 0) + COALESCE (quer2.count, 0) AS total_count
FROM 
(SELECT pz.name, COUNT (*), 'visit' AS action_type
FROM person_visits AS pv
JOIN pizzeria AS pz ON pv.pizzeria_id = pz.id
GROUP BY pz.name) AS quer1
FULL JOIN
(SELECT pz.name, COUNT (*), 'order' AS action_type
FROM person_order AS po
JOIN menu AS m ON po.menu_id = m.id
JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
GROUP BY pz.name) AS quer2
ON quer2.name = quer1.name
ORDER BY 2 DESC, 1 ASC