-- query1
SELECT
	COUNT(*)
FROM
	mystic_manuscript.order_by_sg;

-- query2
SELECT
	EXTRACT(MONTH FROM "Date")::INT || '/' ||
	EXTRACT(DAY FROM "Date")::INT || '/' ||
	EXTRACT(YEAR FROM "Date")::INT as "Date_formatted" ,
	"ID"
FROM
	mystic_manuscript.order_by_sg
ORDER BY
	RANDOM()
LIMIT 5;

-- query3


-- query4


-- query5


-- query6


-- query7
SELECT 
*
FROM 
mystic_manuscript.order_by_sg
ORDER BY
	RANDOM()
LIMIT 5;

