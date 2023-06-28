WITH gs AS(
SELECT gs::date FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS gs)
SELECT gs AS missing_date FROM (SELECT * FROM person_visits pv WHERE (person_id = 1 OR person_id = 2)) AS pv
RIGHT JOIN gs ON pv.visit_date=gs
WHERE pv.id is NULL
ORDER BY missing_date