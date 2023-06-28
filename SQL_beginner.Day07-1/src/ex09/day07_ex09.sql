WITH two_column AS(
SELECT address, ROUND((max(age) - (min(age)/max(age::numeric))), 2) AS formula,
	ROUND (AVG(age), 2) AS average
FROM person
GROUP BY address
ORDER BY 1)

SELECT address, formula, average, formula > average AS comparison
FROM two_column