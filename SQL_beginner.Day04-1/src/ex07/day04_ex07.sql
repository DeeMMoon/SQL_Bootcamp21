INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
	VALUES ((SELECT MAX (id) FROM person_visits)+1, 
			(SELECT id FROM person WHERE person.name = 'Dmitriy'),
			(SELECT pz.id FROM pizzeria AS pz
			JOIN menu AS m ON m.pizzeria_id = pz.id
			WHERE pz.name != 'Papa Johns' AND m.price < 800 
			ORDER BY 1 LIMIT 1), '2022-01-08');
refresh materialized view mv_dmitriy_visits_and_eats;
