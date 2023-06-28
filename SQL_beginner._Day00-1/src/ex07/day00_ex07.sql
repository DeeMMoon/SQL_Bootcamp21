SELECT id, name,
	CASE 
		WHEN (person.age >= 10  AND person.age <= 20) THEN 'interval #1'
		WHEN (person.age > 20 AND person.age < 24) THEN 'interval #2'
		ELSE 'interval #3'
			 END AS "interval_info"
FROM person
ORDER BY interval_info
