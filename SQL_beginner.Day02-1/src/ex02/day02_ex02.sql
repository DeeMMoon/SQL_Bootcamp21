SELECT COALESCE (p.name, '-') AS peson_name,
pv.visit_date, COALESCE (pz.name, '-')
FROM person AS p
FULL JOIN (SELECT * FROM person_visits AS pv WHERE pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS pv
ON p.id = pv.person_id
FULL JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
ORDER BY 1,2,3